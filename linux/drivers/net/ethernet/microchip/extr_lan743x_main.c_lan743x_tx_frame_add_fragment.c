
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan743x_tx_descriptor {unsigned int data0; unsigned int data3; int data2; int data1; } ;
struct lan743x_tx_buffer_info {unsigned int buffer_length; int flags; int dma_ptr; int * skb; } ;
struct lan743x_tx {size_t frame_tail; unsigned int frame_data0; int frame_first; int frame_flags; struct lan743x_tx_buffer_info* buffer_info; struct lan743x_tx_descriptor* ring_cpu_ptr; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_ADDR_HIGH32 (int ) ;
 int DMA_ADDR_LOW32 (int ) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int TX_BUFFER_INFO_FLAG_ACTIVE ;
 int TX_BUFFER_INFO_FLAG_SKB_FRAGMENT ;
 unsigned int TX_DESC_DATA0_BUF_LENGTH_MASK_ ;
 unsigned int TX_DESC_DATA0_DTYPE_DATA_ ;
 unsigned int TX_DESC_DATA0_FCS_ ;
 unsigned int TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_ ;
 int TX_FRAME_FLAG_IN_PROGRESS ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_wmb () ;
 void* lan743x_tx_next_index (struct lan743x_tx*,int) ;
 int lan743x_tx_release_desc (struct lan743x_tx*,int,int) ;
 int skb_frag_dma_map (struct device*,int const*,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;

__attribute__((used)) static int lan743x_tx_frame_add_fragment(struct lan743x_tx *tx,
      const skb_frag_t *fragment,
      unsigned int frame_length)
{



 struct lan743x_tx_descriptor *tx_descriptor = ((void*)0);
 struct lan743x_tx_buffer_info *buffer_info = ((void*)0);
 struct lan743x_adapter *adapter = tx->adapter;
 struct device *dev = &adapter->pdev->dev;
 unsigned int fragment_length = 0;
 dma_addr_t dma_ptr;

 fragment_length = skb_frag_size(fragment);
 if (!fragment_length)
  return 0;


 tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
 tx_descriptor->data0 = tx->frame_data0;


 tx->frame_tail = lan743x_tx_next_index(tx, tx->frame_tail);
 tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
 buffer_info = &tx->buffer_info[tx->frame_tail];
 dma_ptr = skb_frag_dma_map(dev, fragment,
       0, fragment_length,
       DMA_TO_DEVICE);
 if (dma_mapping_error(dev, dma_ptr)) {
  int desc_index;


  desc_index = tx->frame_first;
  while (desc_index != tx->frame_tail) {
   lan743x_tx_release_desc(tx, desc_index, 1);
   desc_index = lan743x_tx_next_index(tx, desc_index);
  }
  dma_wmb();
  tx->frame_flags &= ~TX_FRAME_FLAG_IN_PROGRESS;
  tx->frame_first = 0;
  tx->frame_data0 = 0;
  tx->frame_tail = 0;
  return -ENOMEM;
 }

 tx_descriptor->data1 = DMA_ADDR_LOW32(dma_ptr);
 tx_descriptor->data2 = DMA_ADDR_HIGH32(dma_ptr);
 tx_descriptor->data3 = (frame_length << 16) &
          TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_;

 buffer_info->skb = ((void*)0);
 buffer_info->dma_ptr = dma_ptr;
 buffer_info->buffer_length = fragment_length;
 buffer_info->flags |= TX_BUFFER_INFO_FLAG_ACTIVE;
 buffer_info->flags |= TX_BUFFER_INFO_FLAG_SKB_FRAGMENT;

 tx->frame_data0 = (fragment_length & TX_DESC_DATA0_BUF_LENGTH_MASK_) |
     TX_DESC_DATA0_DTYPE_DATA_ |
     TX_DESC_DATA0_FCS_;


 return 0;
}
