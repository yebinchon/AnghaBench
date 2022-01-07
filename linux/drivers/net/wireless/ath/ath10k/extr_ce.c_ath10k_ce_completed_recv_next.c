
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* ce_completed_recv_next_nolock ) (struct ath10k_ce_pipe*,void**,unsigned int*) ;} ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k_ce_pipe*,void**,unsigned int*) ;

int ath10k_ce_completed_recv_next(struct ath10k_ce_pipe *ce_state,
      void **per_transfer_contextp,
      unsigned int *nbytesp)
{
 struct ath10k *ar = ce_state->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int ret;

 spin_lock_bh(&ce->ce_lock);
 ret = ce_state->ops->ce_completed_recv_next_nolock(ce_state,
         per_transfer_contextp,
         nbytesp);

 spin_unlock_bh(&ce->ce_lock);

 return ret;
}
