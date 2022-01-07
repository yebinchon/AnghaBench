
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sge_rspq {scalar_t__ pktcnt_idx; int intr_params; int cntxt_id; scalar_t__ desc; struct adapter* adap; } ;
struct adapter {int sge; int pf; int mbox; } ;


 int FW_PARAMS_MNEM_DMAQ ;
 scalar_t__ FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH ;
 scalar_t__ FW_PARAMS_PARAM_X_V (int ) ;
 scalar_t__ FW_PARAMS_PARAM_YZ_V (int ) ;
 int QINTR_CNT_EN_V (int) ;
 int QINTR_TIMER_IDX_V (unsigned int) ;
 scalar_t__ closest_thres (int *,unsigned int) ;
 int closest_timer (int *,unsigned int) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,scalar_t__*,scalar_t__*) ;

int cxgb4_set_rspq_intr_params(struct sge_rspq *q,
          unsigned int us, unsigned int cnt)
{
 struct adapter *adap = q->adap;

 if ((us | cnt) == 0)
  cnt = 1;

 if (cnt) {
  int err;
  u32 v, new_idx;

  new_idx = closest_thres(&adap->sge, cnt);
  if (q->desc && q->pktcnt_idx != new_idx) {

   v = FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DMAQ) |
       FW_PARAMS_PARAM_X_V(
     FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH) |
       FW_PARAMS_PARAM_YZ_V(q->cntxt_id);
   err = t4_set_params(adap, adap->mbox, adap->pf, 0, 1,
         &v, &new_idx);
   if (err)
    return err;
  }
  q->pktcnt_idx = new_idx;
 }

 us = us == 0 ? 6 : closest_timer(&adap->sge, us);
 q->intr_params = QINTR_TIMER_IDX_V(us) | QINTR_CNT_EN_V(cnt > 0);
 return 0;
}
