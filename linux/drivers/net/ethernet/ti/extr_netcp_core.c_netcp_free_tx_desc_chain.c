
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int ndev_dev; int tx_pool; int dev; } ;
struct knav_dma_desc {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,scalar_t__*,unsigned int) ;
 int dma_unmap_single (int ,scalar_t__,unsigned int,int ) ;
 int get_pkt_info (scalar_t__*,unsigned int*,scalar_t__*,struct knav_dma_desc*) ;
 int knav_pool_desc_put (int ,struct knav_dma_desc*) ;
 struct knav_dma_desc* knav_pool_desc_unmap (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void netcp_free_tx_desc_chain(struct netcp_intf *netcp,
         struct knav_dma_desc *desc,
         unsigned int desc_sz)
{
 struct knav_dma_desc *ndesc = desc;
 dma_addr_t dma_desc, dma_buf;
 unsigned int buf_len;

 while (ndesc) {
  get_pkt_info(&dma_buf, &buf_len, &dma_desc, ndesc);

  if (dma_buf && buf_len)
   dma_unmap_single(netcp->dev, dma_buf, buf_len,
      DMA_TO_DEVICE);
  else
   dev_warn(netcp->ndev_dev, "bad Tx desc buf(%pad), len(%d)\n",
     &dma_buf, buf_len);

  knav_pool_desc_put(netcp->tx_pool, ndesc);
  ndesc = ((void*)0);
  if (dma_desc) {
   ndesc = knav_pool_desc_unmap(netcp->tx_pool, dma_desc,
           desc_sz);
   if (!ndesc)
    dev_err(netcp->ndev_dev, "failed to unmap Tx desc\n");
  }
 }
}
