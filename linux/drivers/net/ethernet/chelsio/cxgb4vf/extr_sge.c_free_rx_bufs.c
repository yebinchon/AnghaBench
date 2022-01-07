
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {size_t cidx; size_t size; int avail; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {int * page; } ;
struct adapter {int pdev_dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int get_buf_addr (struct rx_sw_desc*) ;
 int get_buf_size (struct adapter*,struct rx_sw_desc*) ;
 scalar_t__ is_buf_mapped (struct rx_sw_desc*) ;
 int put_page (int *) ;

__attribute__((used)) static void free_rx_bufs(struct adapter *adapter, struct sge_fl *fl, int n)
{
 while (n--) {
  struct rx_sw_desc *sdesc = &fl->sdesc[fl->cidx];

  if (is_buf_mapped(sdesc))
   dma_unmap_page(adapter->pdev_dev, get_buf_addr(sdesc),
           get_buf_size(adapter, sdesc),
           PCI_DMA_FROMDEVICE);
  put_page(sdesc->page);
  sdesc->page = ((void*)0);
  if (++fl->cidx == fl->size)
   fl->cidx = 0;
  fl->avail--;
 }
}
