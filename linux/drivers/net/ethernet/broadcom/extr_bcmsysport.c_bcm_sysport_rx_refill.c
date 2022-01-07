
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int rx_dma_failed; int alloc_rx_buff_failed; } ;
struct bcm_sysport_priv {TYPE_2__ mib; struct net_device* netdev; TYPE_1__* pdev; } ;
struct bcm_sysport_cb {int bd_addr; struct sk_buff* skb; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int RX_BUF_LENGTH ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_addr ;
 int dma_desc_set_addr (struct bcm_sysport_priv*,int ,int ) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_addr (struct bcm_sysport_cb*,int ) ;
 int dma_unmap_addr_set (struct bcm_sysport_cb*,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,struct net_device*,char*) ;
 int netif_err (struct bcm_sysport_priv*,int ,struct net_device*,char*) ;
 int rx_err ;
 int rx_status ;

__attribute__((used)) static struct sk_buff *bcm_sysport_rx_refill(struct bcm_sysport_priv *priv,
          struct bcm_sysport_cb *cb)
{
 struct device *kdev = &priv->pdev->dev;
 struct net_device *ndev = priv->netdev;
 struct sk_buff *skb, *rx_skb;
 dma_addr_t mapping;


 skb = netdev_alloc_skb(priv->netdev, RX_BUF_LENGTH);
 if (!skb) {
  priv->mib.alloc_rx_buff_failed++;
  netif_err(priv, rx_err, ndev, "SKB alloc failed\n");
  return ((void*)0);
 }

 mapping = dma_map_single(kdev, skb->data,
     RX_BUF_LENGTH, DMA_FROM_DEVICE);
 if (dma_mapping_error(kdev, mapping)) {
  priv->mib.rx_dma_failed++;
  dev_kfree_skb_any(skb);
  netif_err(priv, rx_err, ndev, "DMA mapping failure\n");
  return ((void*)0);
 }


 rx_skb = cb->skb;
 if (likely(rx_skb))
  dma_unmap_single(kdev, dma_unmap_addr(cb, dma_addr),
     RX_BUF_LENGTH, DMA_FROM_DEVICE);


 cb->skb = skb;
 dma_unmap_addr_set(cb, dma_addr, mapping);
 dma_desc_set_addr(priv, cb->bd_addr, mapping);

 netif_dbg(priv, rx_status, ndev, "RX refill\n");


 return rx_skb;
}
