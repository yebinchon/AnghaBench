
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* mb_free; } ;
struct TYPE_10__ {TYPE_2__ mbuf_pool; } ;
struct TYPE_8__ {TYPE_3__ hwm; } ;
struct s_smc {TYPE_1__ os; } ;
struct TYPE_11__ {struct TYPE_11__* sm_next; struct TYPE_11__* sm_use_count; } ;
typedef TYPE_4__ SMbuf ;


 int DB_GEN (int,char*,TYPE_4__*) ;
 int HWM_E0003 ;
 int HWM_E0003_MSG ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 TYPE_4__* mb_free ;

void smt_free_mbuf(struct s_smc *smc, SMbuf *mb)
{

 if (mb) {
  mb->sm_use_count-- ;
  DB_GEN(3, "free_mbuf: sm_use_count = %d", mb->sm_use_count);





  if (!mb->sm_use_count) {
   DB_GEN(3, "free SMbuf: mb = %p", mb);

   mb->sm_next = smc->os.hwm.mbuf_pool.mb_free ;
   smc->os.hwm.mbuf_pool.mb_free = mb ;




  }
 }
 else
  SMT_PANIC(smc,HWM_E0003,HWM_E0003_MSG) ;
}
