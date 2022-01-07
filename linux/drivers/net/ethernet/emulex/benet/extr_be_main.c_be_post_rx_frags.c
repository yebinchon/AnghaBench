
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct be_rx_page_info {int page_offset; int last_frag; struct page* page; } ;
struct be_queue_info {size_t head; int used; int id; } ;
struct be_rx_obj {int rx_post_starved; struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_eth_rx_d {void* fragpa_hi; void* fragpa_lo; } ;
struct TYPE_5__ {int dma_map_errors; } ;
struct be_adapter {scalar_t__ big_page_size; TYPE_2__ drv_stats; TYPE_1__* pdev; } ;
typedef int gfp_t ;
struct TYPE_6__ {int rx_post_fail; } ;
struct TYPE_4__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int MAX_NUM_POST_ERX_DB ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_read (int *) ;
 struct page* be_alloc_pages (scalar_t__,int ) ;
 int be_rxq_notify (struct be_adapter*,int ,scalar_t__) ;
 int bus ;
 void* cpu_to_le32 (int) ;
 int dma_map_page (struct device*,struct page*,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int) ;
 int dma_unmap_addr_set (struct be_rx_page_info*,int ,int) ;
 int get_page (struct page*) ;
 scalar_t__ min (int ,scalar_t__) ;
 int put_page (struct page*) ;
 int queue_head_inc (struct be_queue_info*) ;
 struct be_eth_rx_d* queue_head_node (struct be_queue_info*) ;
 scalar_t__ rx_frag_size ;
 TYPE_3__* rx_stats (struct be_rx_obj*) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void be_post_rx_frags(struct be_rx_obj *rxo, gfp_t gfp, u32 frags_needed)
{
 struct be_adapter *adapter = rxo->adapter;
 struct be_rx_page_info *page_info = ((void*)0), *prev_page_info = ((void*)0);
 struct be_queue_info *rxq = &rxo->q;
 struct page *pagep = ((void*)0);
 struct device *dev = &adapter->pdev->dev;
 struct be_eth_rx_d *rxd;
 u64 page_dmaaddr = 0, frag_dmaaddr;
 u32 posted, page_offset = 0, notify = 0;

 page_info = &rxo->page_info_tbl[rxq->head];
 for (posted = 0; posted < frags_needed && !page_info->page; posted++) {
  if (!pagep) {
   pagep = be_alloc_pages(adapter->big_page_size, gfp);
   if (unlikely(!pagep)) {
    rx_stats(rxo)->rx_post_fail++;
    break;
   }
   page_dmaaddr = dma_map_page(dev, pagep, 0,
          adapter->big_page_size,
          DMA_FROM_DEVICE);
   if (dma_mapping_error(dev, page_dmaaddr)) {
    put_page(pagep);
    pagep = ((void*)0);
    adapter->drv_stats.dma_map_errors++;
    break;
   }
   page_offset = 0;
  } else {
   get_page(pagep);
   page_offset += rx_frag_size;
  }
  page_info->page_offset = page_offset;
  page_info->page = pagep;

  rxd = queue_head_node(rxq);
  frag_dmaaddr = page_dmaaddr + page_info->page_offset;
  rxd->fragpa_lo = cpu_to_le32(frag_dmaaddr & 0xFFFFFFFF);
  rxd->fragpa_hi = cpu_to_le32(upper_32_bits(frag_dmaaddr));


  if ((page_offset + rx_frag_size + rx_frag_size) >
     adapter->big_page_size) {
   pagep = ((void*)0);
   page_info->last_frag = 1;
   dma_unmap_addr_set(page_info, bus, page_dmaaddr);
  } else {
   dma_unmap_addr_set(page_info, bus, frag_dmaaddr);
  }

  prev_page_info = page_info;
  queue_head_inc(rxq);
  page_info = &rxo->page_info_tbl[rxq->head];
 }




 if (pagep) {
  prev_page_info->last_frag = 1;
  dma_unmap_addr_set(prev_page_info, bus, page_dmaaddr);
 }

 if (posted) {
  atomic_add(posted, &rxq->used);
  if (rxo->rx_post_starved)
   rxo->rx_post_starved = 0;
  do {
   notify = min(MAX_NUM_POST_ERX_DB, posted);
   be_rxq_notify(adapter, rxq->id, notify);
   posted -= notify;
  } while (posted);
 } else if (atomic_read(&rxq->used) == 0) {

  rxo->rx_post_starved = 1;
 }
}
