
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sge_rspq {scalar_t__ pktcnt_idx; int intr_params; int cntxt_id; scalar_t__ desc; } ;
struct adapter {int sge; } ;


 int FW_PARAMS_MNEM_DMAQ ;
 scalar_t__ FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH ;
 scalar_t__ FW_PARAMS_PARAM_X_V (int ) ;
 scalar_t__ FW_PARAMS_PARAM_YZ_V (int ) ;
 int QINTR_CNT_EN_V (int) ;
 int QINTR_TIMER_IDX_V (unsigned int) ;
 unsigned int SGE_TIMER_RSTRT_CNTR ;
 scalar_t__ closest_thres (int *,unsigned int) ;
 unsigned int closest_timer (int *,unsigned int) ;
 int t4vf_set_params (struct adapter*,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int set_rxq_intr_params(struct adapter *adapter, struct sge_rspq *rspq,
          unsigned int us, unsigned int cnt)
{
 unsigned int timer_idx;





 if ((us | cnt) == 0)
  cnt = 1;







 if (cnt) {
  int err;
  u32 v, pktcnt_idx;

  pktcnt_idx = closest_thres(&adapter->sge, cnt);
  if (rspq->desc && rspq->pktcnt_idx != pktcnt_idx) {
   v = FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DMAQ) |
       FW_PARAMS_PARAM_X_V(
     FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH) |
       FW_PARAMS_PARAM_YZ_V(rspq->cntxt_id);
   err = t4vf_set_params(adapter, 1, &v, &pktcnt_idx);
   if (err)
    return err;
  }
  rspq->pktcnt_idx = pktcnt_idx;
 }





 timer_idx = (us == 0
       ? SGE_TIMER_RSTRT_CNTR
       : closest_timer(&adapter->sge, us));





 rspq->intr_params = (QINTR_TIMER_IDX_V(timer_idx) |
        QINTR_CNT_EN_V(cnt > 0));
 return 0;
}
