
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sge_fl {int pend_cred; int * bar2_addr; int bar2_qid; int cntxt_id; } ;
struct TYPE_3__ {int sge_fl_db; } ;
struct TYPE_4__ {int chip; TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;


 int FL_PER_EQ_UNIT ;
 int PIDX_T5_V (int) ;
 int PIDX_V (int) ;
 int QID_V (int ) ;
 int SGE_UDB_KDOORBELL ;
 scalar_t__ SGE_VF_KDOORBELL ;
 scalar_t__ T4VF_SGE_BASE_ADDR ;
 scalar_t__ is_t4 (int ) ;
 int t4_write_reg (struct adapter*,scalar_t__,int) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static inline void ring_fl_db(struct adapter *adapter, struct sge_fl *fl)
{
 u32 val = adapter->params.arch.sge_fl_db;





 if (fl->pend_cred >= FL_PER_EQ_UNIT) {
  if (is_t4(adapter->params.chip))
   val |= PIDX_V(fl->pend_cred / FL_PER_EQ_UNIT);
  else
   val |= PIDX_T5_V(fl->pend_cred / FL_PER_EQ_UNIT);




  wmb();





  if (unlikely(fl->bar2_addr == ((void*)0))) {
   t4_write_reg(adapter,
         T4VF_SGE_BASE_ADDR + SGE_VF_KDOORBELL,
         QID_V(fl->cntxt_id) | val);
  } else {
   writel(val | QID_V(fl->bar2_qid),
          fl->bar2_addr + SGE_UDB_KDOORBELL);




   wmb();
  }
  fl->pend_cred %= FL_PER_EQ_UNIT;
 }
}
