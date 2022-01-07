
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmac_queue_page {int mapping; } ;
struct gemini_ethernet_port {int dummy; } ;
struct gemini_ethernet {int num_freeq_pages; struct gmac_queue_page* freeq_pages; int dev; } ;
typedef int dma_addr_t ;


 int PAGE_MASK ;
 int dev_err (int ,char*) ;

__attribute__((used)) static struct gmac_queue_page *
gmac_get_queue_page(struct gemini_ethernet *geth,
      struct gemini_ethernet_port *port,
      dma_addr_t addr)
{
 struct gmac_queue_page *gpage;
 dma_addr_t mapping;
 int i;


 mapping = addr & PAGE_MASK;

 if (!geth->freeq_pages) {
  dev_err(geth->dev, "try to get page with no page list\n");
  return ((void*)0);
 }


 for (i = 0; i < geth->num_freeq_pages; i++) {
  gpage = &geth->freeq_pages[i];
  if (gpage->mapping == mapping)
   return gpage;
 }

 return ((void*)0);
}
