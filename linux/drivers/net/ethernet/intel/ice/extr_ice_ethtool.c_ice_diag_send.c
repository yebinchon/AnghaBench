
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct ice_tx_desc {void* cmd_type_offset_bsz; void* buf_addr; } ;
struct ice_tx_buf {struct ice_tx_desc* next_to_watch; } ;
struct ice_ring {size_t next_to_use; size_t count; int dev; int tail; struct ice_tx_buf* tx_buf; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ICE_TXD_QW1_CMD_S ;
 int ICE_TXD_QW1_L2TAG1_S ;
 int ICE_TXD_QW1_OFFSET_S ;
 int ICE_TXD_QW1_TX_BUF_SZ_S ;
 struct ice_tx_desc* ICE_TX_DESC (struct ice_ring*,size_t) ;
 int ICE_TX_DESC_CMD_EOP ;
 int ICE_TX_DESC_CMD_RS ;
 int ICE_TX_DESC_DTYPE_DATA ;
 void* cpu_to_le64 (int) ;
 int dma_map_single (int ,int *,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int dma_unmap_single (int ,int,scalar_t__,int ) ;
 int usleep_range (int,int) ;
 int wmb () ;
 int writel_relaxed (size_t,int ) ;

__attribute__((used)) static int ice_diag_send(struct ice_ring *tx_ring, u8 *data, u16 size)
{
 struct ice_tx_desc *tx_desc;
 struct ice_tx_buf *tx_buf;
 dma_addr_t dma;
 u64 td_cmd;

 tx_desc = ICE_TX_DESC(tx_ring, tx_ring->next_to_use);
 tx_buf = &tx_ring->tx_buf[tx_ring->next_to_use];

 dma = dma_map_single(tx_ring->dev, data, size, DMA_TO_DEVICE);
 if (dma_mapping_error(tx_ring->dev, dma))
  return -EINVAL;

 tx_desc->buf_addr = cpu_to_le64(dma);


 td_cmd = (u64)(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS);
 tx_desc->cmd_type_offset_bsz =
  cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
       (td_cmd << ICE_TXD_QW1_CMD_S) |
       ((u64)0 << ICE_TXD_QW1_OFFSET_S) |
       ((u64)size << ICE_TXD_QW1_TX_BUF_SZ_S) |
       ((u64)0 << ICE_TXD_QW1_L2TAG1_S));

 tx_buf->next_to_watch = tx_desc;




 wmb();

 tx_ring->next_to_use++;
 if (tx_ring->next_to_use >= tx_ring->count)
  tx_ring->next_to_use = 0;

 writel_relaxed(tx_ring->next_to_use, tx_ring->tail);


 usleep_range(1000, 2000);
 dma_unmap_single(tx_ring->dev, dma, size, DMA_TO_DEVICE);

 return 0;
}
