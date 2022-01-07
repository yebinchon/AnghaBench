
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lock_class_key {int dummy; } ;
struct iwl_txq {int need_update; int overflow_q; int lock; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int max_tfd_queue_size; } ;


 int EINVAL ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int __skb_queue_head_init (int *) ;
 int iwl_queue_init (struct iwl_txq*,int) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 int spin_lock_init (int *) ;

int iwl_pcie_txq_init(struct iwl_trans *trans, struct iwl_txq *txq,
        int slots_num, bool cmd_queue)
{
 int ret;
 u32 tfd_queue_max_size =
  trans->trans_cfg->base_params->max_tfd_queue_size;

 txq->need_update = 0;



 if (WARN_ONCE(tfd_queue_max_size & (tfd_queue_max_size - 1),
        "Max tfd queue size must be a power of two, but is %d",
        tfd_queue_max_size))
  return -EINVAL;


 ret = iwl_queue_init(txq, slots_num);
 if (ret)
  return ret;

 spin_lock_init(&txq->lock);

 if (cmd_queue) {
  static struct lock_class_key iwl_pcie_cmd_queue_lock_class;

  lockdep_set_class(&txq->lock, &iwl_pcie_cmd_queue_lock_class);
 }

 __skb_queue_head_init(&txq->overflow_q);

 return 0;
}
