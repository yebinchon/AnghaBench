
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {int id; int write_ptr; int lock; } ;
struct iwl_trans {int dummy; } ;


 int HBUS_TARG_WRPTR ;
 int IWL_DEBUG_TX (struct iwl_trans*,char*,int,int) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int lockdep_assert_held (int *) ;

void iwl_pcie_gen2_txq_inc_wr_ptr(struct iwl_trans *trans,
      struct iwl_txq *txq)
{
 lockdep_assert_held(&txq->lock);

 IWL_DEBUG_TX(trans, "Q:%d WR: 0x%x\n", txq->id, txq->write_ptr);





 iwl_write32(trans, HBUS_TARG_WRPTR, txq->write_ptr | (txq->id << 16));
}
