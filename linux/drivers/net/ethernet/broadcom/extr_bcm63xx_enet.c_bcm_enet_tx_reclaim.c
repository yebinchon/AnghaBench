
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct bcm_enet_priv {size_t tx_desc_count; size_t tx_ring_size; size_t tx_dirty_desc; int tx_lock; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
struct TYPE_3__ {int dev; } ;


 int DMADESC_OWNER_MASK ;
 int DMADESC_UNDER_MASK ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bcm_enet_tx_reclaim(struct net_device *dev, int force)
{
 struct bcm_enet_priv *priv;
 int released;

 priv = netdev_priv(dev);
 released = 0;

 while (priv->tx_desc_count < priv->tx_ring_size) {
  struct bcm_enet_desc *desc;
  struct sk_buff *skb;



  spin_lock(&priv->tx_lock);

  desc = &priv->tx_desc_cpu[priv->tx_dirty_desc];

  if (!force && (desc->len_stat & DMADESC_OWNER_MASK)) {
   spin_unlock(&priv->tx_lock);
   break;
  }



  rmb();

  skb = priv->tx_skb[priv->tx_dirty_desc];
  priv->tx_skb[priv->tx_dirty_desc] = ((void*)0);
  dma_unmap_single(&priv->pdev->dev, desc->address, skb->len,
     DMA_TO_DEVICE);

  priv->tx_dirty_desc++;
  if (priv->tx_dirty_desc == priv->tx_ring_size)
   priv->tx_dirty_desc = 0;
  priv->tx_desc_count++;

  spin_unlock(&priv->tx_lock);

  if (desc->len_stat & DMADESC_UNDER_MASK)
   dev->stats.tx_errors++;

  dev_kfree_skb(skb);
  released++;
 }

 if (netif_queue_stopped(dev) && released)
  netif_wake_queue(dev);

 return released;
}
