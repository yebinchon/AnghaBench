
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int db_lock; scalar_t__ db_disabled; scalar_t__ db_pidx_inc; int cntxt_id; } ;
struct adapter {int dummy; } ;


 int MYPF_REG (int ) ;
 int PIDX_V (scalar_t__) ;
 int QID_V (int ) ;
 int SGE_PF_KDOORBELL_A ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void enable_txq_db(struct adapter *adap, struct sge_txq *q)
{
 spin_lock_irq(&q->db_lock);
 if (q->db_pidx_inc) {



  wmb();
  t4_write_reg(adap, MYPF_REG(SGE_PF_KDOORBELL_A),
        QID_V(q->cntxt_id) | PIDX_V(q->db_pidx_inc));
  q->db_pidx_inc = 0;
 }
 q->db_disabled = 0;
 spin_unlock_irq(&q->db_lock);
}
