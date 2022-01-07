
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int cntxt_id; int flags; } ;
struct adapter {int dummy; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 int TXQ_LAST_PKT_DB ;
 int TXQ_RUNNING ;
 int V_EGRCNTX (int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static inline void check_ring_tx_db(struct adapter *adap, struct sge_txq *q)
{
 wmb();
 t3_write_reg(adap, A_SG_KDOORBELL,
       F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));

}
