
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_txq {TYPE_1__* entries; int lock; int read_ptr; } ;
struct iwl_trans {int op_mode; } ;
struct TYPE_2__ {struct sk_buff* skb; int meta; } ;


 int iwl_op_mode_free_skb (int ,struct sk_buff*) ;
 int iwl_pcie_gen2_tfd_unmap (struct iwl_trans*,int *,int ) ;
 int iwl_pcie_get_cmd_index (struct iwl_txq*,int ) ;
 int iwl_pcie_get_tfd (struct iwl_trans*,struct iwl_txq*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_pcie_gen2_free_tfd(struct iwl_trans *trans, struct iwl_txq *txq)
{



 int idx = iwl_pcie_get_cmd_index(txq, txq->read_ptr);

 lockdep_assert_held(&txq->lock);

 iwl_pcie_gen2_tfd_unmap(trans, &txq->entries[idx].meta,
    iwl_pcie_get_tfd(trans, txq, idx));


 if (txq->entries) {
  struct sk_buff *skb;

  skb = txq->entries[idx].skb;





  if (skb) {
   iwl_op_mode_free_skb(trans->op_mode, skb);
   txq->entries[idx].skb = ((void*)0);
  }
 }
}
