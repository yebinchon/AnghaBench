
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
union ixgbe_adv_tx_desc {TYPE_1__ wb; } ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_3__ wb; } ;
typedef size_t u16 ;
struct ixgbe_tx_buffer {int skb; } ;
struct ixgbe_rx_buffer {int dma; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_use; size_t count; int dev; struct ixgbe_rx_buffer* rx_buffer_info; struct ixgbe_tx_buffer* tx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 union ixgbe_adv_rx_desc* IXGBE_RX_DESC (struct ixgbe_ring*,size_t) ;
 int IXGBE_TXD_STAT_DD ;
 union ixgbe_adv_tx_desc* IXGBE_TX_DESC (struct ixgbe_ring*,size_t) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (int ) ;
 int dma ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int dma_unmap_addr (struct ixgbe_tx_buffer*,int ) ;
 int dma_unmap_len (struct ixgbe_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct ixgbe_tx_buffer*,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int ixgbe_alloc_rx_buffers (struct ixgbe_ring*,size_t) ;
 scalar_t__ ixgbe_check_lbtest_frame (struct ixgbe_rx_buffer*,unsigned int) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 int len ;
 int netdev_tx_reset_queue (int ) ;
 int txring_txq (struct ixgbe_ring*) ;

__attribute__((used)) static u16 ixgbe_clean_test_rings(struct ixgbe_ring *rx_ring,
      struct ixgbe_ring *tx_ring,
      unsigned int size)
{
 union ixgbe_adv_rx_desc *rx_desc;
 u16 rx_ntc, tx_ntc, count = 0;


 rx_ntc = rx_ring->next_to_clean;
 tx_ntc = tx_ring->next_to_clean;
 rx_desc = IXGBE_RX_DESC(rx_ring, rx_ntc);

 while (tx_ntc != tx_ring->next_to_use) {
  union ixgbe_adv_tx_desc *tx_desc;
  struct ixgbe_tx_buffer *tx_buffer;

  tx_desc = IXGBE_TX_DESC(tx_ring, tx_ntc);


  if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
   return count;


  tx_buffer = &tx_ring->tx_buffer_info[tx_ntc];


  dev_kfree_skb_any(tx_buffer->skb);


  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(tx_buffer, dma),
     dma_unmap_len(tx_buffer, len),
     DMA_TO_DEVICE);
  dma_unmap_len_set(tx_buffer, len, 0);


  tx_ntc++;
  if (tx_ntc == tx_ring->count)
   tx_ntc = 0;
 }

 while (rx_desc->wb.upper.length) {
  struct ixgbe_rx_buffer *rx_buffer;


  rx_buffer = &rx_ring->rx_buffer_info[rx_ntc];


  dma_sync_single_for_cpu(rx_ring->dev,
     rx_buffer->dma,
     ixgbe_rx_bufsz(rx_ring),
     DMA_FROM_DEVICE);


  if (ixgbe_check_lbtest_frame(rx_buffer, size))
   count++;
  else
   break;


  dma_sync_single_for_device(rx_ring->dev,
        rx_buffer->dma,
        ixgbe_rx_bufsz(rx_ring),
        DMA_FROM_DEVICE);


  rx_ntc++;
  if (rx_ntc == rx_ring->count)
   rx_ntc = 0;


  rx_desc = IXGBE_RX_DESC(rx_ring, rx_ntc);
 }

 netdev_tx_reset_queue(txring_txq(tx_ring));


 ixgbe_alloc_rx_buffers(rx_ring, count);
 rx_ring->next_to_clean = rx_ntc;
 tx_ring->next_to_clean = tx_ntc;

 return count;
}
