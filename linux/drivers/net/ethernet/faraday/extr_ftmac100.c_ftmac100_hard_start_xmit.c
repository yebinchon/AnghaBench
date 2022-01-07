
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100 {int dev; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 scalar_t__ MAX_PKT_SIZE ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int ftmac100_xmit (struct ftmac100*,struct sk_buff*,int ) ;
 scalar_t__ net_ratelimit () ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct ftmac100* netdev_priv (struct net_device*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t
ftmac100_hard_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct ftmac100 *priv = netdev_priv(netdev);
 dma_addr_t map;

 if (unlikely(skb->len > MAX_PKT_SIZE)) {
  if (net_ratelimit())
   netdev_dbg(netdev, "tx packet too big\n");

  netdev->stats.tx_dropped++;
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 map = dma_map_single(priv->dev, skb->data, skb_headlen(skb), DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(priv->dev, map))) {

  if (net_ratelimit())
   netdev_err(netdev, "map socket buffer failed\n");

  netdev->stats.tx_dropped++;
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 return ftmac100_xmit(priv, skb, map);
}
