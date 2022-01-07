
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;
typedef int dma_addr_t ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_send_nolock (struct ath10k_ce_pipe*,void*,int ,unsigned int,unsigned int,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath10k_ce_send(struct ath10k_ce_pipe *ce_state,
     void *per_transfer_context,
     dma_addr_t buffer,
     unsigned int nbytes,
     unsigned int transfer_id,
     unsigned int flags)
{
 struct ath10k *ar = ce_state->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int ret;

 spin_lock_bh(&ce->ce_lock);
 ret = ath10k_ce_send_nolock(ce_state, per_transfer_context,
        buffer, nbytes, transfer_id, flags);
 spin_unlock_bh(&ce->ce_lock);

 return ret;
}
