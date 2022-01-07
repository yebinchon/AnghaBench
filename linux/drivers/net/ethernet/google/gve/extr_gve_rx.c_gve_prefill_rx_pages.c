
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct TYPE_3__ {int * data_ring; int * page_info; TYPE_2__* qpl; } ;
struct gve_rx_ring {int mask; TYPE_1__ data; struct gve_priv* gve; } ;
struct gve_priv {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct page** pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 TYPE_2__* gve_assign_rx_qpl (struct gve_priv*) ;
 int gve_setup_rx_buffer (int *,int *,int,struct page*) ;
 int * kvzalloc (int,int ) ;

__attribute__((used)) static int gve_prefill_rx_pages(struct gve_rx_ring *rx)
{
 struct gve_priv *priv = rx->gve;
 u32 slots;
 int i;




 slots = rx->mask + 1;

 rx->data.page_info = kvzalloc(slots *
          sizeof(*rx->data.page_info), GFP_KERNEL);
 if (!rx->data.page_info)
  return -ENOMEM;

 rx->data.qpl = gve_assign_rx_qpl(priv);

 for (i = 0; i < slots; i++) {
  struct page *page = rx->data.qpl->pages[i];
  dma_addr_t addr = i * PAGE_SIZE;

  gve_setup_rx_buffer(&rx->data.page_info[i],
        &rx->data.data_ring[i], addr, page);
 }

 return slots;
}
