
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* src_ring; struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {scalar_t__ sw_index; int write_index; int nentries_mask; } ;


 int CE_RING_DELTA (int ,int ,scalar_t__) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath10k_ce_num_free_src_entries(struct ath10k_ce_pipe *pipe)
{
 struct ath10k *ar = pipe->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int delta;

 spin_lock_bh(&ce->ce_lock);
 delta = CE_RING_DELTA(pipe->src_ring->nentries_mask,
         pipe->src_ring->write_index,
         pipe->src_ring->sw_index - 1);
 spin_unlock_bh(&ce->ce_lock);

 return delta;
}
