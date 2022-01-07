
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_desc {int len; int addr; } ;
struct i40e_tx_desc {int cmd_type_offset_bsz; int buffer_addr; } ;
struct i40e_tx_buffer {int bytecount; } ;
struct TYPE_2__ {int tx_busy; } ;
struct i40e_ring {size_t next_to_use; size_t count; int xsk_umem; struct i40e_tx_buffer* tx_bi; int dev; TYPE_1__ tx_stats; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 int I40E_TXD_QW1_CMD_SHIFT ;
 struct i40e_tx_desc* I40E_TX_DESC (struct i40e_ring*,size_t) ;
 int I40E_TX_DESC_CMD_EOP ;
 int I40E_TX_DESC_CMD_ICRC ;
 int I40E_TX_DESC_CMD_RS ;
 int build_ctob (int,int ,int ,int ) ;
 int cpu_to_le64 (int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int i40e_xdp_ring_update_tail (struct i40e_ring*) ;
 int unlikely (int ) ;
 int xdp_umem_get_dma (int ,int ) ;
 int xsk_umem_consume_tx (int ,struct xdp_desc*) ;
 int xsk_umem_consume_tx_done (int ) ;

__attribute__((used)) static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
{
 struct i40e_tx_desc *tx_desc = ((void*)0);
 struct i40e_tx_buffer *tx_bi;
 bool work_done = 1;
 struct xdp_desc desc;
 dma_addr_t dma;

 while (budget-- > 0) {
  if (!unlikely(I40E_DESC_UNUSED(xdp_ring))) {
   xdp_ring->tx_stats.tx_busy++;
   work_done = 0;
   break;
  }

  if (!xsk_umem_consume_tx(xdp_ring->xsk_umem, &desc))
   break;

  dma = xdp_umem_get_dma(xdp_ring->xsk_umem, desc.addr);

  dma_sync_single_for_device(xdp_ring->dev, dma, desc.len,
        DMA_BIDIRECTIONAL);

  tx_bi = &xdp_ring->tx_bi[xdp_ring->next_to_use];
  tx_bi->bytecount = desc.len;

  tx_desc = I40E_TX_DESC(xdp_ring, xdp_ring->next_to_use);
  tx_desc->buffer_addr = cpu_to_le64(dma);
  tx_desc->cmd_type_offset_bsz =
   build_ctob(I40E_TX_DESC_CMD_ICRC
       | I40E_TX_DESC_CMD_EOP,
       0, desc.len, 0);

  xdp_ring->next_to_use++;
  if (xdp_ring->next_to_use == xdp_ring->count)
   xdp_ring->next_to_use = 0;
 }

 if (tx_desc) {

  tx_desc->cmd_type_offset_bsz |= (I40E_TX_DESC_CMD_RS <<
       I40E_TXD_QW1_CMD_SHIFT);
  i40e_xdp_ring_update_tail(xdp_ring);

  xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
 }

 return !!budget && work_done;
}
