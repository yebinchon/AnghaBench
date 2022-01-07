
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct iwl_mvm_reorder_buffer {int buf_size; int queue; int valid; struct iwl_mvm* mvm; int lock; int reorder_timer; void* head_sn; scalar_t__ num_stored; } ;
struct TYPE_4__ {int frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_2__ e; } ;
struct iwl_mvm_baid_data {int entries_per_queue; struct iwl_mvm_reorder_buf_entry* entries; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
struct TYPE_3__ {int num_rx_queues; } ;


 int __skb_queue_head_init (int *) ;
 int iwl_mvm_reorder_timer_expired ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void iwl_mvm_init_reorder_buffer(struct iwl_mvm *mvm,
     struct iwl_mvm_baid_data *data,
     u16 ssn, u16 buf_size)
{
 int i;

 for (i = 0; i < mvm->trans->num_rx_queues; i++) {
  struct iwl_mvm_reorder_buffer *reorder_buf =
   &data->reorder_buf[i];
  struct iwl_mvm_reorder_buf_entry *entries =
   &data->entries[i * data->entries_per_queue];
  int j;

  reorder_buf->num_stored = 0;
  reorder_buf->head_sn = ssn;
  reorder_buf->buf_size = buf_size;

  timer_setup(&reorder_buf->reorder_timer,
       iwl_mvm_reorder_timer_expired, 0);
  spin_lock_init(&reorder_buf->lock);
  reorder_buf->mvm = mvm;
  reorder_buf->queue = i;
  reorder_buf->valid = 0;
  for (j = 0; j < reorder_buf->buf_size; j++)
   __skb_queue_head_init(&entries[j].e.frames);
 }
}
