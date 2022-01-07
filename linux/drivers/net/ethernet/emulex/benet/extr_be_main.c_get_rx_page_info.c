
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct be_rx_page_info {int last_frag; int page; } ;
struct be_queue_info {size_t tail; int used; } ;
struct be_rx_obj {struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_adapter {TYPE_1__* pdev; int big_page_size; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int atomic_dec (int *) ;
 int bus ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dma_unmap_addr (struct be_rx_page_info*,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int queue_tail_inc (struct be_queue_info*) ;
 int rx_frag_size ;

__attribute__((used)) static struct be_rx_page_info *get_rx_page_info(struct be_rx_obj *rxo)
{
 struct be_adapter *adapter = rxo->adapter;
 struct be_rx_page_info *rx_page_info;
 struct be_queue_info *rxq = &rxo->q;
 u32 frag_idx = rxq->tail;

 rx_page_info = &rxo->page_info_tbl[frag_idx];
 BUG_ON(!rx_page_info->page);

 if (rx_page_info->last_frag) {
  dma_unmap_page(&adapter->pdev->dev,
          dma_unmap_addr(rx_page_info, bus),
          adapter->big_page_size, DMA_FROM_DEVICE);
  rx_page_info->last_frag = 0;
 } else {
  dma_sync_single_for_cpu(&adapter->pdev->dev,
     dma_unmap_addr(rx_page_info, bus),
     rx_frag_size, DMA_FROM_DEVICE);
 }

 queue_tail_inc(rxq);
 atomic_dec(&rxq->used);
 return rx_page_info;
}
