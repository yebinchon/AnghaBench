
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mpc52xx_fec_priv {int tx_dmatsk; int lock; } ;
struct bcom_fec_bd {int status; int skb_pa; } ;
typedef int netdev_tx_t ;


 int BCOM_FEC_TX_BD_TC ;
 int BCOM_FEC_TX_BD_TFD ;
 int DMA_TO_DEVICE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ bcom_prepare_next_buffer (int ) ;
 scalar_t__ bcom_queue_full (int ) ;
 int bcom_submit_next_buffer (int ,struct sk_buff*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ net_ratelimit () ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t
mpc52xx_fec_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 struct bcom_fec_bd *bd;
 unsigned long flags;

 if (bcom_queue_full(priv->tx_dmatsk)) {
  if (net_ratelimit())
   dev_err(&dev->dev, "transmit queue overrun\n");
  return NETDEV_TX_BUSY;
 }

 spin_lock_irqsave(&priv->lock, flags);

 bd = (struct bcom_fec_bd *)
  bcom_prepare_next_buffer(priv->tx_dmatsk);

 bd->status = skb->len | BCOM_FEC_TX_BD_TFD | BCOM_FEC_TX_BD_TC;
 bd->skb_pa = dma_map_single(dev->dev.parent, skb->data, skb->len,
        DMA_TO_DEVICE);

 skb_tx_timestamp(skb);
 bcom_submit_next_buffer(priv->tx_dmatsk, skb);
 spin_unlock_irqrestore(&priv->lock, flags);

 if (bcom_queue_full(priv->tx_dmatsk)) {
  netif_stop_queue(dev);
 }

 return NETDEV_TX_OK;
}
