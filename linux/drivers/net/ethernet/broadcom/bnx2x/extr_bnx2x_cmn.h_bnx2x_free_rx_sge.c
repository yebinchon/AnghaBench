
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sw_rx_page {struct page* page; } ;
struct page {int dummy; } ;
struct eth_rx_sge {scalar_t__ addr_lo; scalar_t__ addr_hi; } ;
struct bnx2x_fastpath {struct eth_rx_sge* rx_sge_ring; struct sw_rx_page* rx_page_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int SGE_PAGE_SIZE ;
 int dma_unmap_addr (struct sw_rx_page*,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int mapping ;
 int put_page (struct page*) ;

__attribute__((used)) static inline void bnx2x_free_rx_sge(struct bnx2x *bp,
         struct bnx2x_fastpath *fp, u16 index)
{
 struct sw_rx_page *sw_buf = &fp->rx_page_ring[index];
 struct page *page = sw_buf->page;
 struct eth_rx_sge *sge = &fp->rx_sge_ring[index];


 if (!page)
  return;




 dma_unmap_page(&bp->pdev->dev, dma_unmap_addr(sw_buf, mapping),
         SGE_PAGE_SIZE, DMA_FROM_DEVICE);

 put_page(page);

 sw_buf->page = ((void*)0);
 sge->addr_hi = 0;
 sge->addr_lo = 0;
}
