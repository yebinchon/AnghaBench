
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* olinfo_status; void* cmd_type_len; int buffer_addr; } ;
union ixgbe_adv_tx_desc {TYPE_1__ read; } ;
typedef int u32 ;
typedef size_t u16 ;
struct xdp_buff {int data_end; int data; } ;
struct ixgbevf_tx_buffer {int data; int bytecount; int gso_segs; union ixgbe_adv_tx_desc* next_to_watch; scalar_t__ protocol; } ;
struct ixgbevf_ring {size_t next_to_use; size_t count; int state; struct ixgbevf_tx_buffer* tx_buffer_info; int dev; } ;
struct ixgbe_adv_tx_context_desc {scalar_t__ mss_l4len_idx; void* type_tucmd_mlhl; scalar_t__ fceof_saidx; void* vlan_macip_lens; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ETH_HLEN ;
 struct ixgbe_adv_tx_context_desc* IXGBEVF_TX_CTXTDESC (struct ixgbevf_ring*,int ) ;
 union ixgbe_adv_tx_desc* IXGBEVF_TX_DESC (struct ixgbevf_ring*,size_t) ;
 int IXGBEVF_XDP_CONSUMED ;
 int IXGBEVF_XDP_TX ;
 int IXGBE_ADVTXD_CC ;
 int IXGBE_ADVTXD_DCMD_DEXT ;
 int IXGBE_ADVTXD_DCMD_IFCS ;
 int IXGBE_ADVTXD_DTYP_CTXT ;
 int IXGBE_ADVTXD_DTYP_DATA ;
 int IXGBE_ADVTXD_MACLEN_SHIFT ;
 int IXGBE_ADVTXD_PAYLEN_SHIFT ;
 int IXGBE_TXD_CMD ;
 int IXGBE_TXD_CMD_DEXT ;
 int __IXGBEVF_TX_XDP_RING_PRIMED ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dma_map_single (int ,int,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_addr_set (struct ixgbevf_tx_buffer*,int ,int ) ;
 int dma_unmap_len_set (struct ixgbevf_tx_buffer*,int,int) ;
 int ixgbevf_desc_unused (struct ixgbevf_ring*) ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
     struct xdp_buff *xdp)
{
 struct ixgbevf_tx_buffer *tx_buffer;
 union ixgbe_adv_tx_desc *tx_desc;
 u32 len, cmd_type;
 dma_addr_t dma;
 u16 i;

 len = xdp->data_end - xdp->data;

 if (unlikely(!ixgbevf_desc_unused(ring)))
  return IXGBEVF_XDP_CONSUMED;

 dma = dma_map_single(ring->dev, xdp->data, len, DMA_TO_DEVICE);
 if (dma_mapping_error(ring->dev, dma))
  return IXGBEVF_XDP_CONSUMED;


 i = ring->next_to_use;
 tx_buffer = &ring->tx_buffer_info[i];

 dma_unmap_len_set(tx_buffer, len, len);
 dma_unmap_addr_set(tx_buffer, dma, dma);
 tx_buffer->data = xdp->data;
 tx_buffer->bytecount = len;
 tx_buffer->gso_segs = 1;
 tx_buffer->protocol = 0;




 if (!test_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state)) {
  struct ixgbe_adv_tx_context_desc *context_desc;

  set_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);

  context_desc = IXGBEVF_TX_CTXTDESC(ring, 0);
  context_desc->vlan_macip_lens =
   cpu_to_le32(ETH_HLEN << IXGBE_ADVTXD_MACLEN_SHIFT);
  context_desc->fceof_saidx = 0;
  context_desc->type_tucmd_mlhl =
   cpu_to_le32(IXGBE_TXD_CMD_DEXT |
        IXGBE_ADVTXD_DTYP_CTXT);
  context_desc->mss_l4len_idx = 0;

  i = 1;
 }


 cmd_type = IXGBE_ADVTXD_DTYP_DATA |
     IXGBE_ADVTXD_DCMD_DEXT |
     IXGBE_ADVTXD_DCMD_IFCS;
 cmd_type |= len | IXGBE_TXD_CMD;

 tx_desc = IXGBEVF_TX_DESC(ring, i);
 tx_desc->read.buffer_addr = cpu_to_le64(dma);

 tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
 tx_desc->read.olinfo_status =
   cpu_to_le32((len << IXGBE_ADVTXD_PAYLEN_SHIFT) |
        IXGBE_ADVTXD_CC);


 smp_wmb();


 i++;
 if (i == ring->count)
  i = 0;

 tx_buffer->next_to_watch = tx_desc;
 ring->next_to_use = i;

 return IXGBEVF_XDP_TX;
}
