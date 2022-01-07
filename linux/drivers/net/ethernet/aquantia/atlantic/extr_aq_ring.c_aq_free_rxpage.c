
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aq_rxpage {unsigned int order; int * page; int daddr; } ;


 int DMA_FROM_DEVICE ;
 unsigned int PAGE_SIZE ;
 int __free_pages (int *,unsigned int) ;
 int dma_unmap_page (struct device*,int ,unsigned int,int ) ;

__attribute__((used)) static inline void aq_free_rxpage(struct aq_rxpage *rxpage, struct device *dev)
{
 unsigned int len = PAGE_SIZE << rxpage->order;

 dma_unmap_page(dev, rxpage->daddr, len, DMA_FROM_DEVICE);


 __free_pages(rxpage->page, rxpage->order);
 rxpage->page = ((void*)0);
}
