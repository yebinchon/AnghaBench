
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rhine_skb_dma {TYPE_2__* skb; int dma; } ;
struct rhine_private {int rx_buf_sz; } ;
struct TYPE_4__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int data; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENOMEM ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int dma_map_single (struct device*,int ,int const,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int drv ;
 TYPE_2__* netdev_alloc_skb (struct net_device*,int const) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netif_err (struct rhine_private*,int ,struct net_device*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int rhine_skb_dma_init(struct net_device *dev,
         struct rhine_skb_dma *sd)
{
 struct rhine_private *rp = netdev_priv(dev);
 struct device *hwdev = dev->dev.parent;
 const int size = rp->rx_buf_sz;

 sd->skb = netdev_alloc_skb(dev, size);
 if (!sd->skb)
  return -ENOMEM;

 sd->dma = dma_map_single(hwdev, sd->skb->data, size, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(hwdev, sd->dma))) {
  netif_err(rp, drv, dev, "Rx DMA mapping failure\n");
  dev_kfree_skb_any(sd->skb);
  return -EIO;
 }

 return 0;
}
