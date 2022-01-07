
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sge_rspq {int iqe_len; unsigned int abs_id; scalar_t__ bar2_addr; int bar2_qid; int cntxt_id; int intr_params; int napi; scalar_t__ cur_desc; } ;
struct sge {int intrq_lock; struct sge_rspq** ingr_map; struct sge_rspq intrq; } ;
struct rsp_ctrl {int pldbuflen_qid; int type_gen; } ;
struct adapter {struct sge sge; int pdev_dev; } ;


 int CIDXINC_V (unsigned int) ;
 int INGRESSQID_V (int ) ;
 unsigned int IQ_IDX (struct sge*,unsigned int) ;
 unsigned int MAX_INGQ ;
 unsigned int RSPD_QID_G (int ) ;
 scalar_t__ RSPD_TYPE_G (int ) ;
 scalar_t__ RSPD_TYPE_INTR_X ;
 int SEINTARM_V (int ) ;
 scalar_t__ SGE_UDB_GTS ;
 scalar_t__ SGE_VF_GTS ;
 scalar_t__ T4VF_SGE_BASE_ADDR ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,unsigned int,...) ;
 int dma_rmb () ;
 int is_new_response (struct rsp_ctrl const*,struct sge_rspq*) ;
 int napi_schedule (int *) ;
 int rspq_next (struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_write_reg (struct adapter*,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned int process_intrq(struct adapter *adapter)
{
 struct sge *s = &adapter->sge;
 struct sge_rspq *intrq = &s->intrq;
 unsigned int work_done;
 u32 val;

 spin_lock(&adapter->sge.intrq_lock);
 for (work_done = 0; ; work_done++) {
  const struct rsp_ctrl *rc;
  unsigned int qid, iq_idx;
  struct sge_rspq *rspq;





  rc = (void *)intrq->cur_desc + (intrq->iqe_len - sizeof(*rc));
  if (!is_new_response(rc, intrq))
   break;






  dma_rmb();
  if (unlikely(RSPD_TYPE_G(rc->type_gen) != RSPD_TYPE_INTR_X)) {
   dev_err(adapter->pdev_dev,
    "Unexpected INTRQ response type %d\n",
    RSPD_TYPE_G(rc->type_gen));
   continue;
  }
  qid = RSPD_QID_G(be32_to_cpu(rc->pldbuflen_qid));
  iq_idx = IQ_IDX(s, qid);
  if (unlikely(iq_idx >= MAX_INGQ)) {
   dev_err(adapter->pdev_dev,
    "Ingress QID %d out of range\n", qid);
   continue;
  }
  rspq = s->ingr_map[iq_idx];
  if (unlikely(rspq == ((void*)0))) {
   dev_err(adapter->pdev_dev,
    "Ingress QID %d RSPQ=NULL\n", qid);
   continue;
  }
  if (unlikely(rspq->abs_id != qid)) {
   dev_err(adapter->pdev_dev,
    "Ingress QID %d refers to RSPQ %d\n",
    qid, rspq->abs_id);
   continue;
  }






  napi_schedule(&rspq->napi);
  rspq_next(intrq);
 }

 val = CIDXINC_V(work_done) | SEINTARM_V(intrq->intr_params);



 if (unlikely(!intrq->bar2_addr)) {
  t4_write_reg(adapter, T4VF_SGE_BASE_ADDR + SGE_VF_GTS,
        val | INGRESSQID_V(intrq->cntxt_id));
 } else {
  writel(val | INGRESSQID_V(intrq->bar2_qid),
         intrq->bar2_addr + SGE_UDB_GTS);
  wmb();
 }

 spin_unlock(&adapter->sge.intrq_lock);

 return work_done;
}
