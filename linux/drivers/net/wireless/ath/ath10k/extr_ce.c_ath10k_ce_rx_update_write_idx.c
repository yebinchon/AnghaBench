
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int write_index; unsigned int sw_index; } ;
struct ath10k_ce_pipe {unsigned int ctrl_addr; struct ath10k_ce_ring* dest_ring; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 unsigned int CE_RING_IDX_ADD (unsigned int,unsigned int,unsigned int) ;
 unsigned int ath10k_ce_dest_ring_write_index_get (struct ath10k*,unsigned int) ;
 int ath10k_ce_dest_ring_write_index_set (struct ath10k*,unsigned int,unsigned int) ;

void ath10k_ce_rx_update_write_idx(struct ath10k_ce_pipe *pipe, u32 nentries)
{
 struct ath10k *ar = pipe->ar;
 struct ath10k_ce_ring *dest_ring = pipe->dest_ring;
 unsigned int nentries_mask = dest_ring->nentries_mask;
 unsigned int write_index = dest_ring->write_index;
 u32 ctrl_addr = pipe->ctrl_addr;
 u32 cur_write_idx = ath10k_ce_dest_ring_write_index_get(ar, ctrl_addr);




 if (((cur_write_idx + nentries) & nentries_mask) == dest_ring->sw_index)
  nentries -= 1;

 write_index = CE_RING_IDX_ADD(nentries_mask, write_index, nentries);
 ath10k_ce_dest_ring_write_index_set(ar, ctrl_addr, write_index);
 dest_ring->write_index = write_index;
}
