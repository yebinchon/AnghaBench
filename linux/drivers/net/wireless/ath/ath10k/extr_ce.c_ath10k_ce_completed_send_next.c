
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;


 int ath10k_ce_completed_send_next_nolock (struct ath10k_ce_pipe*,void**) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath10k_ce_completed_send_next(struct ath10k_ce_pipe *ce_state,
      void **per_transfer_contextp)
{
 struct ath10k *ar = ce_state->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int ret;

 spin_lock_bh(&ce->ce_lock);
 ret = ath10k_ce_completed_send_next_nolock(ce_state,
         per_transfer_contextp);
 spin_unlock_bh(&ce->ce_lock);

 return ret;
}
