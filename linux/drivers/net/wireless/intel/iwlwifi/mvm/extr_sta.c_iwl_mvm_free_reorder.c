
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm_reorder_buffer {int buf_size; int removed; int reorder_timer; int lock; int num_stored; } ;
struct TYPE_4__ {int frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_2__ e; } ;
struct iwl_mvm_baid_data {int entries_per_queue; struct iwl_mvm_reorder_buf_entry* entries; struct iwl_mvm_reorder_buffer* reorder_buf; int baid; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
struct TYPE_3__ {int num_rx_queues; } ;


 int WARN_ON (int) ;
 int __skb_queue_purge (int *) ;
 int del_timer_sync (int *) ;
 int iwl_mvm_sync_rxq_del_ba (struct iwl_mvm*,int ) ;
 scalar_t__ likely (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iwl_mvm_free_reorder(struct iwl_mvm *mvm,
     struct iwl_mvm_baid_data *data)
{
 int i;

 iwl_mvm_sync_rxq_del_ba(mvm, data->baid);

 for (i = 0; i < mvm->trans->num_rx_queues; i++) {
  int j;
  struct iwl_mvm_reorder_buffer *reorder_buf =
   &data->reorder_buf[i];
  struct iwl_mvm_reorder_buf_entry *entries =
   &data->entries[i * data->entries_per_queue];

  spin_lock_bh(&reorder_buf->lock);
  if (likely(!reorder_buf->num_stored)) {
   spin_unlock_bh(&reorder_buf->lock);
   continue;
  }






  WARN_ON(1);

  for (j = 0; j < reorder_buf->buf_size; j++)
   __skb_queue_purge(&entries[j].e.frames);
  reorder_buf->removed = 1;
  spin_unlock_bh(&reorder_buf->lock);
  del_timer_sync(&reorder_buf->reorder_timer);
 }
}
