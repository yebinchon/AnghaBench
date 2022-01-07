
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct xdp_umem {int dummy; } ;
struct i40e_vsi {unsigned int work_limit; } ;
struct i40e_tx_buffer {scalar_t__ bytecount; int * xdpf; } ;
struct i40e_ring {unsigned int next_to_clean; unsigned int count; struct xdp_umem* xsk_umem; struct i40e_tx_buffer* tx_bi; } ;


 int i40e_arm_wb (struct i40e_ring*,struct i40e_vsi*,unsigned int) ;
 int i40e_clean_xdp_tx_buffer (struct i40e_ring*,struct i40e_tx_buffer*) ;
 unsigned int i40e_get_head (struct i40e_ring*) ;
 int i40e_update_tx_stats (struct i40e_ring*,unsigned int,unsigned int) ;
 int i40e_xmit_zc (struct i40e_ring*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int xsk_set_tx_need_wakeup (struct xdp_umem*) ;
 int xsk_umem_complete_tx (struct xdp_umem*,unsigned int) ;
 scalar_t__ xsk_umem_uses_need_wakeup (struct xdp_umem*) ;

bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
      struct i40e_ring *tx_ring, int napi_budget)
{
 unsigned int ntc, total_bytes = 0, budget = vsi->work_limit;
 u32 i, completed_frames, frames_ready, xsk_frames = 0;
 struct xdp_umem *umem = tx_ring->xsk_umem;
 u32 head_idx = i40e_get_head(tx_ring);
 bool work_done = 1, xmit_done;
 struct i40e_tx_buffer *tx_bi;

 if (head_idx < tx_ring->next_to_clean)
  head_idx += tx_ring->count;
 frames_ready = head_idx - tx_ring->next_to_clean;

 if (frames_ready == 0) {
  goto out_xmit;
 } else if (frames_ready > budget) {
  completed_frames = budget;
  work_done = 0;
 } else {
  completed_frames = frames_ready;
 }

 ntc = tx_ring->next_to_clean;

 for (i = 0; i < completed_frames; i++) {
  tx_bi = &tx_ring->tx_bi[ntc];

  if (tx_bi->xdpf)
   i40e_clean_xdp_tx_buffer(tx_ring, tx_bi);
  else
   xsk_frames++;

  tx_bi->xdpf = ((void*)0);
  total_bytes += tx_bi->bytecount;

  if (++ntc >= tx_ring->count)
   ntc = 0;
 }

 tx_ring->next_to_clean += completed_frames;
 if (unlikely(tx_ring->next_to_clean >= tx_ring->count))
  tx_ring->next_to_clean -= tx_ring->count;

 if (xsk_frames)
  xsk_umem_complete_tx(umem, xsk_frames);

 i40e_arm_wb(tx_ring, vsi, budget);
 i40e_update_tx_stats(tx_ring, completed_frames, total_bytes);

out_xmit:
 if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem))
  xsk_set_tx_need_wakeup(tx_ring->xsk_umem);

 xmit_done = i40e_xmit_zc(tx_ring, budget);

 return work_done && xmit_done;
}
