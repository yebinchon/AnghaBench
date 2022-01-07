
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct lan743x_tx_descriptor {int data0; } ;
struct lan743x_tx_buffer_info {int flags; struct sk_buff* skb; } ;
struct lan743x_tx {int frame_data0; size_t frame_tail; size_t last_tail; int vector_flags; int frame_flags; int channel_number; struct lan743x_tx_buffer_info* buffer_info; struct lan743x_tx_descriptor* ring_cpu_ptr; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;


 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET ;
 int TX_BUFFER_INFO_FLAG_IGNORE_SYNC ;
 int TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED ;
 int TX_DESC_DATA0_DTYPE_DATA_ ;
 int TX_DESC_DATA0_DTYPE_MASK_ ;
 int TX_DESC_DATA0_IOC_ ;
 int TX_DESC_DATA0_LS_ ;
 int TX_FRAME_FLAG_IN_PROGRESS ;
 int TX_TAIL (int ) ;
 int TX_TAIL_SET_DMAC_INT_EN_ ;
 int TX_TAIL_SET_TOP_INT_EN_ ;
 int TX_TAIL_SET_TOP_INT_VEC_EN_ ;
 int dma_wmb () ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 size_t lan743x_tx_next_index (struct lan743x_tx*,size_t) ;

__attribute__((used)) static void lan743x_tx_frame_end(struct lan743x_tx *tx,
     struct sk_buff *skb,
     bool time_stamp,
     bool ignore_sync)
{



 struct lan743x_tx_descriptor *tx_descriptor = ((void*)0);
 struct lan743x_tx_buffer_info *buffer_info = ((void*)0);
 struct lan743x_adapter *adapter = tx->adapter;
 u32 tx_tail_flags = 0;


 if ((tx->frame_data0 & TX_DESC_DATA0_DTYPE_MASK_) ==
     TX_DESC_DATA0_DTYPE_DATA_) {
  tx->frame_data0 |= TX_DESC_DATA0_LS_;
  tx->frame_data0 |= TX_DESC_DATA0_IOC_;
 }

 tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
 buffer_info = &tx->buffer_info[tx->frame_tail];
 buffer_info->skb = skb;
 if (time_stamp)
  buffer_info->flags |= TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED;
 if (ignore_sync)
  buffer_info->flags |= TX_BUFFER_INFO_FLAG_IGNORE_SYNC;

 tx_descriptor->data0 = tx->frame_data0;
 tx->frame_tail = lan743x_tx_next_index(tx, tx->frame_tail);
 tx->last_tail = tx->frame_tail;

 dma_wmb();

 if (tx->vector_flags & LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET)
  tx_tail_flags |= TX_TAIL_SET_TOP_INT_VEC_EN_;
 if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET)
  tx_tail_flags |= TX_TAIL_SET_DMAC_INT_EN_ |
  TX_TAIL_SET_TOP_INT_EN_;

 lan743x_csr_write(adapter, TX_TAIL(tx->channel_number),
     tx_tail_flags | tx->frame_tail);
 tx->frame_flags &= ~TX_FRAME_FLAG_IN_PROGRESS;
}
