
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct xdp_frame {int len; void* data; } ;
struct i40e_tx_desc {int cmd_type_offset_bsz; int buffer_addr; } ;
struct i40e_tx_buffer {int gso_segs; struct i40e_tx_desc* next_to_watch; struct xdp_frame* xdpf; int bytecount; } ;
struct TYPE_2__ {int tx_busy; } ;
struct i40e_ring {size_t next_to_use; size_t count; struct i40e_tx_buffer* tx_bi; int dev; TYPE_1__ tx_stats; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 int I40E_TXD_CMD ;
 struct i40e_tx_desc* I40E_TX_DESC (struct i40e_ring*,size_t) ;
 int I40E_TX_DESC_CMD_ICRC ;
 int I40E_XDP_CONSUMED ;
 int I40E_XDP_TX ;
 int build_ctob (int,int ,int ,int ) ;
 int cpu_to_le64 (int ) ;
 int dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_addr_set (struct i40e_tx_buffer*,int ,int ) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,int ) ;
 int len ;
 int smp_wmb () ;
 int unlikely (int ) ;

__attribute__((used)) static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
         struct i40e_ring *xdp_ring)
{
 u16 i = xdp_ring->next_to_use;
 struct i40e_tx_buffer *tx_bi;
 struct i40e_tx_desc *tx_desc;
 void *data = xdpf->data;
 u32 size = xdpf->len;
 dma_addr_t dma;

 if (!unlikely(I40E_DESC_UNUSED(xdp_ring))) {
  xdp_ring->tx_stats.tx_busy++;
  return I40E_XDP_CONSUMED;
 }
 dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
 if (dma_mapping_error(xdp_ring->dev, dma))
  return I40E_XDP_CONSUMED;

 tx_bi = &xdp_ring->tx_bi[i];
 tx_bi->bytecount = size;
 tx_bi->gso_segs = 1;
 tx_bi->xdpf = xdpf;


 dma_unmap_len_set(tx_bi, len, size);
 dma_unmap_addr_set(tx_bi, dma, dma);

 tx_desc = I40E_TX_DESC(xdp_ring, i);
 tx_desc->buffer_addr = cpu_to_le64(dma);
 tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC
        | I40E_TXD_CMD,
        0, size, 0);




 smp_wmb();

 i++;
 if (i == xdp_ring->count)
  i = 0;

 tx_bi->next_to_watch = tx_desc;
 xdp_ring->next_to_use = i;

 return I40E_XDP_TX;
}
