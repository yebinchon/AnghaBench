
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgb_buffer {scalar_t__ time_stamp; int * skb; scalar_t__ dma; int length; scalar_t__ mapped_as_page; } ;
struct ixgb_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void
ixgb_unmap_and_free_tx_resource(struct ixgb_adapter *adapter,
                                struct ixgb_buffer *buffer_info)
{
 if (buffer_info->dma) {
  if (buffer_info->mapped_as_page)
   dma_unmap_page(&adapter->pdev->dev, buffer_info->dma,
           buffer_info->length, DMA_TO_DEVICE);
  else
   dma_unmap_single(&adapter->pdev->dev, buffer_info->dma,
      buffer_info->length, DMA_TO_DEVICE);
  buffer_info->dma = 0;
 }

 if (buffer_info->skb) {
  dev_kfree_skb_any(buffer_info->skb);
  buffer_info->skb = ((void*)0);
 }
 buffer_info->time_stamp = 0;



}
