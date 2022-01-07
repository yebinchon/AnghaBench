
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mpc52xx_fec_priv {int lock; int tx_dmatsk; } ;
struct bcom_fec_bd {int skb_pa; } ;
struct bcom_bd {int dummy; } ;
typedef int irqreturn_t ;


 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 struct sk_buff* bcom_retrieve_buffer (int ,int *,struct bcom_bd**) ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mpc52xx_fec_tx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);

 spin_lock(&priv->lock);
 while (bcom_buffer_done(priv->tx_dmatsk)) {
  struct sk_buff *skb;
  struct bcom_fec_bd *bd;
  skb = bcom_retrieve_buffer(priv->tx_dmatsk, ((void*)0),
    (struct bcom_bd **)&bd);
  dma_unmap_single(dev->dev.parent, bd->skb_pa, skb->len,
     DMA_TO_DEVICE);

  dev_consume_skb_irq(skb);
 }
 spin_unlock(&priv->lock);

 netif_wake_queue(dev);

 return IRQ_HANDLED;
}
