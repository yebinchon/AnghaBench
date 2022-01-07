
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sge_fl {int pend_cred; int * bar2_addr; int bar2_qid; int cntxt_id; } ;
struct TYPE_4__ {int sge_fl_db; } ;
struct TYPE_3__ {int chip; TYPE_2__ arch; } ;
struct adapter {TYPE_1__ params; } ;


 int MYPF_REG (int ) ;
 int PIDX_T5_V (int) ;
 int PIDX_V (int) ;
 int QID_V (int ) ;
 int SGE_PF_KDOORBELL_A ;
 int SGE_UDB_KDOORBELL ;
 scalar_t__ is_t4 (int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static inline void ring_fl_db(struct adapter *adap, struct sge_fl *q)
{
 if (q->pend_cred >= 8) {
  u32 val = adap->params.arch.sge_fl_db;

  if (is_t4(adap->params.chip))
   val |= PIDX_V(q->pend_cred / 8);
  else
   val |= PIDX_T5_V(q->pend_cred / 8);




  wmb();





  if (unlikely(q->bar2_addr == ((void*)0))) {
   t4_write_reg(adap, MYPF_REG(SGE_PF_KDOORBELL_A),
         val | QID_V(q->cntxt_id));
  } else {
   writel(val | QID_V(q->bar2_qid),
          q->bar2_addr + SGE_UDB_KDOORBELL);




   wmb();
  }
  q->pend_cred &= 7;
 }
}
