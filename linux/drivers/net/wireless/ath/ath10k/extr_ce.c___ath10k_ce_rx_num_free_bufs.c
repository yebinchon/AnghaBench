
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int write_index; unsigned int sw_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;


 int CE_RING_DELTA (unsigned int,unsigned int,unsigned int) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int lockdep_assert_held (int *) ;

int __ath10k_ce_rx_num_free_bufs(struct ath10k_ce_pipe *pipe)
{
 struct ath10k *ar = pipe->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_ring *dest_ring = pipe->dest_ring;
 unsigned int nentries_mask = dest_ring->nentries_mask;
 unsigned int write_index = dest_ring->write_index;
 unsigned int sw_index = dest_ring->sw_index;

 lockdep_assert_held(&ce->ce_lock);

 return CE_RING_DELTA(nentries_mask, write_index, sw_index - 1);
}
