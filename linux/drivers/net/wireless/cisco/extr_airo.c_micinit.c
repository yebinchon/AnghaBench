
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int enabled; } ;
struct airo_info {int tfm; TYPE_2__* mod; TYPE_1__ micstats; int sem; int jobs; } ;
typedef int mic_rid ;
struct TYPE_10__ {scalar_t__ valid; } ;
struct TYPE_9__ {int unicast; scalar_t__ unicastValid; int multicast; scalar_t__ multicastValid; int state; } ;
struct TYPE_8__ {TYPE_4__ uCtx; TYPE_4__ mCtx; } ;
typedef TYPE_3__ MICRid ;


 int JOB_MIC ;
 int PC4500_readrid (struct airo_info*,int ,TYPE_3__*,int,int ) ;
 int RID_MIC ;
 int age_mic_context (TYPE_4__*,TYPE_4__*,int ,int,int ) ;
 int clear_bit (int ,int *) ;
 int le16_to_cpu (int ) ;
 int up (int *) ;

__attribute__((used)) static void micinit(struct airo_info *ai)
{
 MICRid mic_rid;

 clear_bit(JOB_MIC, &ai->jobs);
 PC4500_readrid(ai, RID_MIC, &mic_rid, sizeof(mic_rid), 0);
 up(&ai->sem);

 ai->micstats.enabled = (le16_to_cpu(mic_rid.state) & 0x00FF) ? 1 : 0;
 if (!ai->micstats.enabled) {



  ai->mod[0].uCtx.valid = 0;
  ai->mod[0].mCtx.valid = 0;
  return;
 }

 if (mic_rid.multicastValid) {
  age_mic_context(&ai->mod[0].mCtx, &ai->mod[1].mCtx,
                  mic_rid.multicast, sizeof(mic_rid.multicast),
                  ai->tfm);
 }

 if (mic_rid.unicastValid) {
  age_mic_context(&ai->mod[0].uCtx, &ai->mod[1].uCtx,
    mic_rid.unicast, sizeof(mic_rid.unicast),
    ai->tfm);
 }
}
