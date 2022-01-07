
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {scalar_t__ cleaned; scalar_t__ in_use; scalar_t__ processed; int cntxt_id; int flags; } ;
struct sge_qset {struct sge_txq* txq; } ;
struct adapter {int dummy; } ;


 int A_SG_KDOORBELL ;
 unsigned int F_RSPD_TXQ0_GTS ;
 unsigned int F_RSPD_TXQ1_GTS ;
 int F_SELEGRCNTX ;
 size_t TXQ_ETH ;
 int TXQ_LAST_PKT_DB ;
 size_t TXQ_OFLD ;
 int TXQ_RUNNING ;
 int V_EGRCNTX (int ) ;
 int set_bit (int ,int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void check_ring_db(struct adapter *adap, struct sge_qset *qs,
     unsigned int sleeping)
{
 if (sleeping & F_RSPD_TXQ0_GTS) {
  struct sge_txq *txq = &qs->txq[TXQ_ETH];

  if (txq->cleaned + txq->in_use != txq->processed &&
      !test_and_set_bit(TXQ_LAST_PKT_DB, &txq->flags)) {
   set_bit(TXQ_RUNNING, &txq->flags);
   t3_write_reg(adap, A_SG_KDOORBELL, F_SELEGRCNTX |
         V_EGRCNTX(txq->cntxt_id));
  }
 }

 if (sleeping & F_RSPD_TXQ1_GTS) {
  struct sge_txq *txq = &qs->txq[TXQ_OFLD];

  if (txq->cleaned + txq->in_use != txq->processed &&
      !test_and_set_bit(TXQ_LAST_PKT_DB, &txq->flags)) {
   set_bit(TXQ_RUNNING, &txq->flags);
   t3_write_reg(adap, A_SG_KDOORBELL, F_SELEGRCNTX |
         V_EGRCNTX(txq->cntxt_id));
  }
 }
}
