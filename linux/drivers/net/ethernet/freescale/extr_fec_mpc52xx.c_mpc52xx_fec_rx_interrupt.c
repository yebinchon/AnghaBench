
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; int len; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct mpc52xx_fec_priv {int lock; int rx_dmatsk; } ;
struct bcom_fec_bd {int skb_pa; } ;
struct bcom_bd {int dummy; } ;
typedef int irqreturn_t ;


 int BCOM_FEC_RX_BD_ERRORS ;
 int BCOM_FEC_RX_BD_LEN_MASK ;
 int DMA_FROM_DEVICE ;
 int FEC_RX_BUFFER_SIZE ;
 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 struct sk_buff* bcom_retrieve_buffer (int ,int*,struct bcom_bd**) ;
 int dev_notice (TYPE_2__*,char*) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int mpc52xx_fec_rx_submit (struct net_device*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_defer_rx_timestamp (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mpc52xx_fec_rx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 struct sk_buff *rskb;
 struct sk_buff *skb;
 struct bcom_fec_bd *bd;
 u32 status, physaddr;
 int length;

 spin_lock(&priv->lock);

 while (bcom_buffer_done(priv->rx_dmatsk)) {

  rskb = bcom_retrieve_buffer(priv->rx_dmatsk, &status,
         (struct bcom_bd **)&bd);
  physaddr = bd->skb_pa;


  if (status & BCOM_FEC_RX_BD_ERRORS) {

   mpc52xx_fec_rx_submit(dev, rskb);
   dev->stats.rx_dropped++;
   continue;
  }



  skb = netdev_alloc_skb(dev, FEC_RX_BUFFER_SIZE);
  if (!skb) {

   dev_notice(&dev->dev, "Low memory - dropped packet.\n");
   mpc52xx_fec_rx_submit(dev, rskb);
   dev->stats.rx_dropped++;
   continue;
  }


  mpc52xx_fec_rx_submit(dev, skb);



  spin_unlock(&priv->lock);

  dma_unmap_single(dev->dev.parent, physaddr, rskb->len,
     DMA_FROM_DEVICE);
  length = status & BCOM_FEC_RX_BD_LEN_MASK;
  skb_put(rskb, length - 4);
  rskb->protocol = eth_type_trans(rskb, dev);
  if (!skb_defer_rx_timestamp(rskb))
   netif_rx(rskb);

  spin_lock(&priv->lock);
 }

 spin_unlock(&priv->lock);

 return IRQ_HANDLED;
}
