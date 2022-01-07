
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {int dev; struct net_device* netdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int RX_BUF_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int ftmac100_rxdes_set_buffer_size (struct ftmac100_rxdes*,int ) ;
 int ftmac100_rxdes_set_dma_addr (struct ftmac100_rxdes*,int ) ;
 int ftmac100_rxdes_set_dma_own (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_set_page (struct ftmac100_rxdes*,struct page*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ftmac100_alloc_rx_page(struct ftmac100 *priv,
      struct ftmac100_rxdes *rxdes, gfp_t gfp)
{
 struct net_device *netdev = priv->netdev;
 struct page *page;
 dma_addr_t map;

 page = alloc_page(gfp);
 if (!page) {
  if (net_ratelimit())
   netdev_err(netdev, "failed to allocate rx page\n");
  return -ENOMEM;
 }

 map = dma_map_page(priv->dev, page, 0, RX_BUF_SIZE, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(priv->dev, map))) {
  if (net_ratelimit())
   netdev_err(netdev, "failed to map rx page\n");
  __free_page(page);
  return -ENOMEM;
 }

 ftmac100_rxdes_set_page(rxdes, page);
 ftmac100_rxdes_set_dma_addr(rxdes, map);
 ftmac100_rxdes_set_buffer_size(rxdes, RX_BUF_SIZE);
 ftmac100_rxdes_set_dma_own(rxdes);
 return 0;
}
