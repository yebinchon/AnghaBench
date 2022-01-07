
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef size_t u16 ;
struct igb_tx_buffer {int skb; } ;
struct igb_rx_buffer {int dma; } ;
struct igb_ring {size_t next_to_clean; size_t count; int dev; struct igb_tx_buffer* tx_buffer_info; struct igb_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 union e1000_adv_rx_desc* IGB_RX_DESC (struct igb_ring*,size_t) ;
 int dev_kfree_skb_any (int ) ;
 int dma ;
 int dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int dma_unmap_addr (struct igb_tx_buffer*,int ) ;
 int dma_unmap_len (struct igb_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct igb_tx_buffer*,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int igb_alloc_rx_buffers (struct igb_ring*,size_t) ;
 scalar_t__ igb_check_lbtest_frame (struct igb_rx_buffer*,unsigned int) ;
 int len ;
 int netdev_tx_reset_queue (int ) ;
 int txring_txq (struct igb_ring*) ;

__attribute__((used)) static int igb_clean_test_rings(struct igb_ring *rx_ring,
    struct igb_ring *tx_ring,
    unsigned int size)
{
 union e1000_adv_rx_desc *rx_desc;
 struct igb_rx_buffer *rx_buffer_info;
 struct igb_tx_buffer *tx_buffer_info;
 u16 rx_ntc, tx_ntc, count = 0;


 rx_ntc = rx_ring->next_to_clean;
 tx_ntc = tx_ring->next_to_clean;
 rx_desc = IGB_RX_DESC(rx_ring, rx_ntc);

 while (rx_desc->wb.upper.length) {

  rx_buffer_info = &rx_ring->rx_buffer_info[rx_ntc];


  dma_sync_single_for_cpu(rx_ring->dev,
     rx_buffer_info->dma,
     size,
     DMA_FROM_DEVICE);


  if (igb_check_lbtest_frame(rx_buffer_info, size))
   count++;


  dma_sync_single_for_device(rx_ring->dev,
        rx_buffer_info->dma,
        size,
        DMA_FROM_DEVICE);


  tx_buffer_info = &tx_ring->tx_buffer_info[tx_ntc];


  dev_kfree_skb_any(tx_buffer_info->skb);


  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(tx_buffer_info, dma),
     dma_unmap_len(tx_buffer_info, len),
     DMA_TO_DEVICE);
  dma_unmap_len_set(tx_buffer_info, len, 0);


  rx_ntc++;
  if (rx_ntc == rx_ring->count)
   rx_ntc = 0;
  tx_ntc++;
  if (tx_ntc == tx_ring->count)
   tx_ntc = 0;


  rx_desc = IGB_RX_DESC(rx_ring, rx_ntc);
 }

 netdev_tx_reset_queue(txring_txq(tx_ring));


 igb_alloc_rx_buffers(rx_ring, count);
 rx_ring->next_to_clean = rx_ntc;
 tx_ring->next_to_clean = tx_ntc;

 return count;
}
