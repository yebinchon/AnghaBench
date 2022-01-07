
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {scalar_t__ ape_hb_jiffies; int ape_hb; } ;


 int ENABLE_APE ;
 int TG3_APE_HOST_HEARTBEAT_COUNT ;
 scalar_t__ jiffies ;
 int tg3_ape_write32 (struct tg3*,int ,int ) ;
 int tg3_flag (struct tg3*,int ) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void tg3_send_ape_heartbeat(struct tg3 *tp,
       unsigned long interval)
{

 if (!tg3_flag(tp, ENABLE_APE) ||
     time_before(jiffies, tp->ape_hb_jiffies + interval))
  return;

 tg3_ape_write32(tp, TG3_APE_HOST_HEARTBEAT_COUNT, tp->ape_hb++);
 tp->ape_hb_jiffies = jiffies;
}
