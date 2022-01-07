
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sge_rspq {int iqe_len; int * bar2_addr; int bar2_qid; int cntxt_id; int intr_params; scalar_t__ cur_desc; } ;
struct rsp_ctrl {int pldbuflen_qid; int type_gen; } ;
struct TYPE_4__ {int intrq_lock; TYPE_1__** ingr_map; scalar_t__ ingr_start; struct sge_rspq intrq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int napi; } ;


 int CIDXINC_V (unsigned int) ;
 int INGRESSQID_V (int ) ;
 int MYPF_REG (int ) ;
 scalar_t__ RSPD_TYPE_G (int ) ;
 scalar_t__ RSPD_TYPE_INTR_X ;
 int SEINTARM_V (int ) ;
 int SGE_PF_GTS_A ;
 int SGE_UDB_GTS ;
 int dma_rmb () ;
 int is_new_response (struct rsp_ctrl const*,struct sge_rspq*) ;
 int napi_schedule (int *) ;
 unsigned int ntohl (int ) ;
 int rspq_next (struct sge_rspq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static unsigned int process_intrq(struct adapter *adap)
{
 unsigned int credits;
 const struct rsp_ctrl *rc;
 struct sge_rspq *q = &adap->sge.intrq;
 u32 val;

 spin_lock(&adap->sge.intrq_lock);
 for (credits = 0; ; credits++) {
  rc = (void *)q->cur_desc + (q->iqe_len - sizeof(*rc));
  if (!is_new_response(rc, q))
   break;

  dma_rmb();
  if (RSPD_TYPE_G(rc->type_gen) == RSPD_TYPE_INTR_X) {
   unsigned int qid = ntohl(rc->pldbuflen_qid);

   qid -= adap->sge.ingr_start;
   napi_schedule(&adap->sge.ingr_map[qid]->napi);
  }

  rspq_next(q);
 }

 val = CIDXINC_V(credits) | SEINTARM_V(q->intr_params);




 if (unlikely(q->bar2_addr == ((void*)0))) {
  t4_write_reg(adap, MYPF_REG(SGE_PF_GTS_A),
        val | INGRESSQID_V(q->cntxt_id));
 } else {
  writel(val | INGRESSQID_V(q->bar2_qid),
         q->bar2_addr + SGE_UDB_GTS);
  wmb();
 }
 spin_unlock(&adap->sge.intrq_lock);
 return credits;
}
