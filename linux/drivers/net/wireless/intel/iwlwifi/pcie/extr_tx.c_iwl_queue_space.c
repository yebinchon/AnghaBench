
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_txq {unsigned int n_window; int write_ptr; int read_ptr; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {unsigned int max_tfd_queue_size; } ;


 scalar_t__ WARN_ON (int) ;

int iwl_queue_space(struct iwl_trans *trans, const struct iwl_txq *q)
{
 unsigned int max;
 unsigned int used;







 if (q->n_window < trans->trans_cfg->base_params->max_tfd_queue_size)
  max = q->n_window;
 else
  max = trans->trans_cfg->base_params->max_tfd_queue_size - 1;





 used = (q->write_ptr - q->read_ptr) &
  (trans->trans_cfg->base_params->max_tfd_queue_size - 1);

 if (WARN_ON(used > max))
  return 0;

 return max - used;
}
