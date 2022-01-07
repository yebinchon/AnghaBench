
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int rx_pool; int dev; int ndev_dev; int * rx_fdq; } ;
struct knav_dma_desc {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 scalar_t__ GET_SW_DATA0 (struct knav_dma_desc*) ;
 unsigned int PAGE_SIZE ;
 int __free_page (void*) ;
 int dev_err (int ,char*) ;
 int dma_unmap_page (int ,int ,unsigned int,int ) ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 int get_org_pkt_info (int *,unsigned int*,struct knav_dma_desc*) ;
 int knav_pool_desc_put (int ,struct knav_dma_desc*) ;
 struct knav_dma_desc* knav_pool_desc_unmap (int ,int ,unsigned int) ;
 int knav_queue_pop (int ,unsigned int*) ;
 int netcp_frag_free (int,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void netcp_free_rx_buf(struct netcp_intf *netcp, int fdq)
{
 struct knav_dma_desc *desc;
 unsigned int buf_len, dma_sz;
 dma_addr_t dma;
 void *buf_ptr;


 while ((dma = knav_queue_pop(netcp->rx_fdq[fdq], &dma_sz))) {
  desc = knav_pool_desc_unmap(netcp->rx_pool, dma, dma_sz);
  if (unlikely(!desc)) {
   dev_err(netcp->ndev_dev, "failed to unmap Rx desc\n");
   continue;
  }

  get_org_pkt_info(&dma, &buf_len, desc);



  buf_ptr = (void *)GET_SW_DATA0(desc);

  if (unlikely(!dma)) {
   dev_err(netcp->ndev_dev, "NULL orig_buff in desc\n");
   knav_pool_desc_put(netcp->rx_pool, desc);
   continue;
  }

  if (unlikely(!buf_ptr)) {
   dev_err(netcp->ndev_dev, "NULL bufptr in desc\n");
   knav_pool_desc_put(netcp->rx_pool, desc);
   continue;
  }

  if (fdq == 0) {
   dma_unmap_single(netcp->dev, dma, buf_len,
      DMA_FROM_DEVICE);
   netcp_frag_free((buf_len <= PAGE_SIZE), buf_ptr);
  } else {
   dma_unmap_page(netcp->dev, dma, buf_len,
           DMA_FROM_DEVICE);
   __free_page(buf_ptr);
  }

  knav_pool_desc_put(netcp->rx_pool, desc);
 }
}
