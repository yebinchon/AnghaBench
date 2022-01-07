
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_txq {int read_ptr; TYPE_1__* entries; int lock; } ;
struct iwl_trans {int op_mode; } ;
struct TYPE_2__ {struct sk_buff* skb; int meta; } ;


 int iwl_op_mode_free_skb (int ,struct sk_buff*) ;
 int iwl_pcie_get_cmd_index (struct iwl_txq*,int) ;
 int iwl_pcie_tfd_unmap (struct iwl_trans*,int *,struct iwl_txq*,int) ;
 int lockdep_assert_held (int *) ;

void iwl_pcie_txq_free_tfd(struct iwl_trans *trans, struct iwl_txq *txq)
{



 int rd_ptr = txq->read_ptr;
 int idx = iwl_pcie_get_cmd_index(txq, rd_ptr);

 lockdep_assert_held(&txq->lock);




 iwl_pcie_tfd_unmap(trans, &txq->entries[idx].meta, txq, rd_ptr);


 if (txq->entries) {
  struct sk_buff *skb;

  skb = txq->entries[idx].skb;





  if (skb) {
   iwl_op_mode_free_skb(trans->op_mode, skb);
   txq->entries[idx].skb = ((void*)0);
  }
 }
}
