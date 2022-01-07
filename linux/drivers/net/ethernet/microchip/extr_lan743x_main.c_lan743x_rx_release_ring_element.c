
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lan743x_rx_descriptor {int * skb; scalar_t__ dma_ptr; int buffer_length; } ;
struct lan743x_rx_buffer_info {int * skb; scalar_t__ dma_ptr; int buffer_length; } ;
struct lan743x_rx {TYPE_2__* adapter; struct lan743x_rx_descriptor* buffer_info; struct lan743x_rx_descriptor* ring_cpu_ptr; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int memset (struct lan743x_rx_descriptor*,int ,int) ;

__attribute__((used)) static void lan743x_rx_release_ring_element(struct lan743x_rx *rx, int index)
{
 struct lan743x_rx_buffer_info *buffer_info;
 struct lan743x_rx_descriptor *descriptor;

 descriptor = &rx->ring_cpu_ptr[index];
 buffer_info = &rx->buffer_info[index];

 memset(descriptor, 0, sizeof(*descriptor));

 if (buffer_info->dma_ptr) {
  dma_unmap_single(&rx->adapter->pdev->dev,
     buffer_info->dma_ptr,
     buffer_info->buffer_length,
     DMA_FROM_DEVICE);
  buffer_info->dma_ptr = 0;
 }

 if (buffer_info->skb) {
  dev_kfree_skb(buffer_info->skb);
  buffer_info->skb = ((void*)0);
 }

 memset(buffer_info, 0, sizeof(*buffer_info));
}
