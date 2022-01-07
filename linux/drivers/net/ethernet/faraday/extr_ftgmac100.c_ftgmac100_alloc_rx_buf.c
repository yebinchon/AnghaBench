
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct ftgmac100_rxdes {void* rxdes0; void* rxdes3; } ;
struct ftgmac100 {int rx_q_entries; int rxdes0_edorr_mask; struct sk_buff** rx_skbs; int rx_scratch_dma; int dev; struct net_device* netdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int RX_BUF_SIZE ;
 void* cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_wmb () ;
 scalar_t__ net_ratelimit () ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ftgmac100_alloc_rx_buf(struct ftgmac100 *priv, unsigned int entry,
      struct ftgmac100_rxdes *rxdes, gfp_t gfp)
{
 struct net_device *netdev = priv->netdev;
 struct sk_buff *skb;
 dma_addr_t map;
 int err = 0;

 skb = netdev_alloc_skb_ip_align(netdev, RX_BUF_SIZE);
 if (unlikely(!skb)) {
  if (net_ratelimit())
   netdev_warn(netdev, "failed to allocate rx skb\n");
  err = -ENOMEM;
  map = priv->rx_scratch_dma;
 } else {
  map = dma_map_single(priv->dev, skb->data, RX_BUF_SIZE,
         DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(priv->dev, map))) {
   if (net_ratelimit())
    netdev_err(netdev, "failed to map rx page\n");
   dev_kfree_skb_any(skb);
   map = priv->rx_scratch_dma;
   skb = ((void*)0);
   err = -ENOMEM;
  }
 }


 priv->rx_skbs[entry] = skb;


 rxdes->rxdes3 = cpu_to_le32(map);


 dma_wmb();


 if (entry == (priv->rx_q_entries - 1))
  rxdes->rxdes0 = cpu_to_le32(priv->rxdes0_edorr_mask);
 else
  rxdes->rxdes0 = 0;

 return err;
}
