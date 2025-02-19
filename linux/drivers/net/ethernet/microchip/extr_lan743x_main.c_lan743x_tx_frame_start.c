
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan743x_tx_descriptor {unsigned int data3; int data2; int data1; } ;
struct lan743x_tx_buffer_info {unsigned int buffer_length; int flags; int dma_ptr; int * skb; } ;
struct lan743x_tx {size_t frame_first; size_t last_tail; size_t frame_tail; unsigned int frame_data0; struct lan743x_tx_buffer_info* buffer_info; struct lan743x_tx_descriptor* ring_cpu_ptr; int frame_flags; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_ADDR_HIGH32 (int ) ;
 int DMA_ADDR_LOW32 (int ) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int TX_BUFFER_INFO_FLAG_ACTIVE ;
 unsigned int TX_DESC_DATA0_BUF_LENGTH_MASK_ ;
 unsigned int TX_DESC_DATA0_DTYPE_DATA_ ;
 unsigned int TX_DESC_DATA0_FCS_ ;
 unsigned int TX_DESC_DATA0_FS_ ;
 int TX_DESC_DATA0_ICE_ ;
 int TX_DESC_DATA0_IPE_ ;
 int TX_DESC_DATA0_TPE_ ;
 unsigned int TX_DESC_DATA0_TSE_ ;
 unsigned int TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_ ;
 int TX_FRAME_FLAG_IN_PROGRESS ;
 int dma_map_single (struct device*,unsigned char*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;

__attribute__((used)) static int lan743x_tx_frame_start(struct lan743x_tx *tx,
      unsigned char *first_buffer,
      unsigned int first_buffer_length,
      unsigned int frame_length,
      bool time_stamp,
      bool check_sum)
{



 struct lan743x_tx_descriptor *tx_descriptor = ((void*)0);
 struct lan743x_tx_buffer_info *buffer_info = ((void*)0);
 struct lan743x_adapter *adapter = tx->adapter;
 struct device *dev = &adapter->pdev->dev;
 dma_addr_t dma_ptr;

 tx->frame_flags |= TX_FRAME_FLAG_IN_PROGRESS;
 tx->frame_first = tx->last_tail;
 tx->frame_tail = tx->frame_first;

 tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
 buffer_info = &tx->buffer_info[tx->frame_tail];
 dma_ptr = dma_map_single(dev, first_buffer, first_buffer_length,
     DMA_TO_DEVICE);
 if (dma_mapping_error(dev, dma_ptr))
  return -ENOMEM;

 tx_descriptor->data1 = DMA_ADDR_LOW32(dma_ptr);
 tx_descriptor->data2 = DMA_ADDR_HIGH32(dma_ptr);
 tx_descriptor->data3 = (frame_length << 16) &
  TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_;

 buffer_info->skb = ((void*)0);
 buffer_info->dma_ptr = dma_ptr;
 buffer_info->buffer_length = first_buffer_length;
 buffer_info->flags |= TX_BUFFER_INFO_FLAG_ACTIVE;

 tx->frame_data0 = (first_buffer_length &
  TX_DESC_DATA0_BUF_LENGTH_MASK_) |
  TX_DESC_DATA0_DTYPE_DATA_ |
  TX_DESC_DATA0_FS_ |
  TX_DESC_DATA0_FCS_;
 if (time_stamp)
  tx->frame_data0 |= TX_DESC_DATA0_TSE_;

 if (check_sum)
  tx->frame_data0 |= TX_DESC_DATA0_ICE_ |
       TX_DESC_DATA0_IPE_ |
       TX_DESC_DATA0_TPE_;


 return 0;
}
