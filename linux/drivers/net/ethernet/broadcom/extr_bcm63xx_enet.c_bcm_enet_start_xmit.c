
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct bcm_enet_priv {size_t tx_curr_desc; int dma_desc_shift; size_t tx_ring_size; int tx_lock; int tx_desc_count; int tx_chan; int dma_chan_en_mask; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; scalar_t__ enet_is_sw; } ;
struct bcm_enet_desc {int len_stat; int address; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int dev; } ;


 int DMADESC_APPEND_CRC ;
 int DMADESC_ESOP_MASK ;
 int DMADESC_LENGTH_MASK ;
 int DMADESC_LENGTH_SHIFT ;
 int DMADESC_OWNER_MASK ;
 int DMADESC_WRAP_MASK ;
 int DMA_TO_DEVICE ;
 int ENETDMAC_CHANCFG ;
 int GFP_ATOMIC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_err (int *,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int *,int ,int,int ) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int ,int ,int ) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 char* skb_put_zero (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t
bcm_enet_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct bcm_enet_desc *desc;
 u32 len_stat;
 netdev_tx_t ret;

 priv = netdev_priv(dev);


 spin_lock(&priv->tx_lock);



 if (unlikely(!priv->tx_desc_count)) {
  netif_stop_queue(dev);
  dev_err(&priv->pdev->dev, "xmit called with no tx desc "
   "available?\n");
  ret = NETDEV_TX_BUSY;
  goto out_unlock;
 }


 if (priv->enet_is_sw && skb->len < 64) {
  int needed = 64 - skb->len;
  char *data;

  if (unlikely(skb_tailroom(skb) < needed)) {
   struct sk_buff *nskb;

   nskb = skb_copy_expand(skb, 0, needed, GFP_ATOMIC);
   if (!nskb) {
    ret = NETDEV_TX_BUSY;
    goto out_unlock;
   }
   dev_kfree_skb(skb);
   skb = nskb;
  }
  data = skb_put_zero(skb, needed);
 }


 desc = &priv->tx_desc_cpu[priv->tx_curr_desc];
 priv->tx_skb[priv->tx_curr_desc] = skb;


 desc->address = dma_map_single(&priv->pdev->dev, skb->data, skb->len,
           DMA_TO_DEVICE);

 len_stat = (skb->len << DMADESC_LENGTH_SHIFT) & DMADESC_LENGTH_MASK;
 len_stat |= (DMADESC_ESOP_MASK >> priv->dma_desc_shift) |
  DMADESC_APPEND_CRC |
  DMADESC_OWNER_MASK;

 priv->tx_curr_desc++;
 if (priv->tx_curr_desc == priv->tx_ring_size) {
  priv->tx_curr_desc = 0;
  len_stat |= (DMADESC_WRAP_MASK >> priv->dma_desc_shift);
 }
 priv->tx_desc_count--;



 wmb();
 desc->len_stat = len_stat;
 wmb();


 enet_dmac_writel(priv, priv->dma_chan_en_mask,
     ENETDMAC_CHANCFG, priv->tx_chan);


 if (!priv->tx_desc_count)
  netif_stop_queue(dev);

 dev->stats.tx_bytes += skb->len;
 dev->stats.tx_packets++;
 ret = NETDEV_TX_OK;

out_unlock:
 spin_unlock(&priv->tx_lock);
 return ret;
}
