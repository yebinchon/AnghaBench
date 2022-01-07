
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ce_desc_64 {scalar_t__ nbytes; int addr; } ;
struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int sw_index; unsigned int write_index; int ** per_transfer_context; struct ce_desc_64* base_addr_owner_space; } ;
struct ath10k_ce_pipe {struct ath10k* ar; struct ath10k_ce_ring* dest_ring; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;
typedef int dma_addr_t ;


 struct ce_desc_64* CE_DEST_RING_TO_DESC_64 (struct ce_desc_64*,unsigned int) ;
 unsigned int CE_RING_IDX_INCR (unsigned int,unsigned int) ;
 int EIO ;
 int __le64_to_cpu (int ) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int _ath10k_ce_revoke_recv_next_64(struct ath10k_ce_pipe *ce_state,
       void **per_transfer_contextp,
       dma_addr_t *bufferp)
{
 struct ath10k_ce_ring *dest_ring;
 unsigned int nentries_mask;
 unsigned int sw_index;
 unsigned int write_index;
 int ret;
 struct ath10k *ar;
 struct ath10k_ce *ce;

 dest_ring = ce_state->dest_ring;

 if (!dest_ring)
  return -EIO;

 ar = ce_state->ar;
 ce = ath10k_ce_priv(ar);

 spin_lock_bh(&ce->ce_lock);

 nentries_mask = dest_ring->nentries_mask;
 sw_index = dest_ring->sw_index;
 write_index = dest_ring->write_index;
 if (write_index != sw_index) {
  struct ce_desc_64 *base = dest_ring->base_addr_owner_space;
  struct ce_desc_64 *desc =
   CE_DEST_RING_TO_DESC_64(base, sw_index);


  *bufferp = __le64_to_cpu(desc->addr);

  if (per_transfer_contextp)
   *per_transfer_contextp =
    dest_ring->per_transfer_context[sw_index];


  dest_ring->per_transfer_context[sw_index] = ((void*)0);
  desc->nbytes = 0;


  sw_index = CE_RING_IDX_INCR(nentries_mask, sw_index);
  dest_ring->sw_index = sw_index;
  ret = 0;
 } else {
  ret = -EIO;
 }

 spin_unlock_bh(&ce->ce_lock);

 return ret;
}
