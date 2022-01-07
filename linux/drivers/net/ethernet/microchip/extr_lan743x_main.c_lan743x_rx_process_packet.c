
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int protocol; } ;
struct lan743x_rx_descriptor {int data0; int data1; int data2; } ;
struct lan743x_rx_buffer_info {struct sk_buff* skb; scalar_t__ buffer_length; scalar_t__ dma_ptr; } ;
struct lan743x_rx {int* head_cpu_ptr; int ring_size; int last_head; int last_tail; int napi; struct lan743x_rx_buffer_info* buffer_info; struct lan743x_rx_descriptor* ring_cpu_ptr; TYPE_2__* adapter; } ;
struct TYPE_4__ {int netdev; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int RX_DESC_DATA0_EXT_ ;
 int RX_DESC_DATA0_FRAME_LENGTH_GET_ (int) ;
 int RX_DESC_DATA0_FS_ ;
 int RX_DESC_DATA0_LS_ ;
 int RX_DESC_DATA0_OWN_ ;
 int RX_DESC_DATA2_TS_NS_MASK_ ;
 int RX_PROCESS_RESULT_NOTHING_TO_DO ;
 int RX_PROCESS_RESULT_PACKET_DROPPED ;
 int RX_PROCESS_RESULT_PACKET_RECEIVED ;
 int dma_unmap_single (int *,scalar_t__,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int ktime_set (int,int) ;
 struct sk_buff* lan743x_rx_allocate_skb (struct lan743x_rx*) ;
 int lan743x_rx_init_ring_element (struct lan743x_rx*,int,struct sk_buff*) ;
 void* lan743x_rx_next_index (struct lan743x_rx*,int) ;
 int lan743x_rx_reuse_ring_element (struct lan743x_rx*,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int lan743x_rx_process_packet(struct lan743x_rx *rx)
{
 struct skb_shared_hwtstamps *hwtstamps = ((void*)0);
 int result = RX_PROCESS_RESULT_NOTHING_TO_DO;
 struct lan743x_rx_buffer_info *buffer_info;
 struct lan743x_rx_descriptor *descriptor;
 int current_head_index = -1;
 int extension_index = -1;
 int first_index = -1;
 int last_index = -1;

 current_head_index = *rx->head_cpu_ptr;
 if (current_head_index < 0 || current_head_index >= rx->ring_size)
  goto done;

 if (rx->last_head < 0 || rx->last_head >= rx->ring_size)
  goto done;

 if (rx->last_head != current_head_index) {
  descriptor = &rx->ring_cpu_ptr[rx->last_head];
  if (descriptor->data0 & RX_DESC_DATA0_OWN_)
   goto done;

  if (!(descriptor->data0 & RX_DESC_DATA0_FS_))
   goto done;

  first_index = rx->last_head;
  if (descriptor->data0 & RX_DESC_DATA0_LS_) {
   last_index = rx->last_head;
  } else {
   int index;

   index = lan743x_rx_next_index(rx, first_index);
   while (index != current_head_index) {
    descriptor = &rx->ring_cpu_ptr[index];
    if (descriptor->data0 & RX_DESC_DATA0_OWN_)
     goto done;

    if (descriptor->data0 & RX_DESC_DATA0_LS_) {
     last_index = index;
     break;
    }
    index = lan743x_rx_next_index(rx, index);
   }
  }
  if (last_index >= 0) {
   descriptor = &rx->ring_cpu_ptr[last_index];
   if (descriptor->data0 & RX_DESC_DATA0_EXT_) {

    int index = lan743x_rx_next_index(rx,
          last_index);
    if (index != current_head_index) {
     descriptor = &rx->ring_cpu_ptr[index];
     if (descriptor->data0 &
         RX_DESC_DATA0_OWN_) {
      goto done;
     }
     if (descriptor->data0 &
         RX_DESC_DATA0_EXT_) {
      extension_index = index;
     } else {
      goto done;
     }
    } else {


     first_index = -1;
     last_index = -1;
    }
   }
  }
 }
 if (first_index >= 0 && last_index >= 0) {
  int real_last_index = last_index;
  struct sk_buff *skb = ((void*)0);
  u32 ts_sec = 0;
  u32 ts_nsec = 0;


  if (first_index == last_index) {

   struct sk_buff *new_skb = ((void*)0);
   int packet_length;

   new_skb = lan743x_rx_allocate_skb(rx);
   if (!new_skb) {




    lan743x_rx_reuse_ring_element(rx, first_index);
    goto process_extension;
   }

   buffer_info = &rx->buffer_info[first_index];
   skb = buffer_info->skb;
   descriptor = &rx->ring_cpu_ptr[first_index];


   if (buffer_info->dma_ptr) {
    dma_unmap_single(&rx->adapter->pdev->dev,
       buffer_info->dma_ptr,
       buffer_info->buffer_length,
       DMA_FROM_DEVICE);
    buffer_info->dma_ptr = 0;
    buffer_info->buffer_length = 0;
   }
   buffer_info->skb = ((void*)0);
   packet_length = RX_DESC_DATA0_FRAME_LENGTH_GET_
     (descriptor->data0);
   skb_put(skb, packet_length - 4);
   skb->protocol = eth_type_trans(skb,
             rx->adapter->netdev);
   lan743x_rx_init_ring_element(rx, first_index, new_skb);
  } else {
   int index = first_index;







   if (first_index <= last_index) {
    while ((index >= first_index) &&
           (index <= last_index)) {
     lan743x_rx_reuse_ring_element(rx,
              index);
     index = lan743x_rx_next_index(rx,
              index);
    }
   } else {
    while ((index >= first_index) ||
           (index <= last_index)) {
     lan743x_rx_reuse_ring_element(rx,
              index);
     index = lan743x_rx_next_index(rx,
              index);
    }
   }
  }

process_extension:
  if (extension_index >= 0) {
   descriptor = &rx->ring_cpu_ptr[extension_index];
   buffer_info = &rx->buffer_info[extension_index];

   ts_sec = descriptor->data1;
   ts_nsec = (descriptor->data2 &
      RX_DESC_DATA2_TS_NS_MASK_);
   lan743x_rx_reuse_ring_element(rx, extension_index);
   real_last_index = extension_index;
  }

  if (!skb) {
   result = RX_PROCESS_RESULT_PACKET_DROPPED;
   goto move_forward;
  }

  if (extension_index < 0)
   goto pass_packet_to_os;
  hwtstamps = skb_hwtstamps(skb);
  if (hwtstamps)
   hwtstamps->hwtstamp = ktime_set(ts_sec, ts_nsec);

pass_packet_to_os:

  napi_gro_receive(&rx->napi, skb);
  result = RX_PROCESS_RESULT_PACKET_RECEIVED;

move_forward:

  rx->last_tail = real_last_index;
  rx->last_head = lan743x_rx_next_index(rx, real_last_index);
 }
done:
 return result;
}
