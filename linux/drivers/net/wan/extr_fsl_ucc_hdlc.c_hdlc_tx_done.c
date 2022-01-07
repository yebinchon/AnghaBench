
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ucc_hdlc_private {size_t skb_dirtytx; struct qe_bd* dirty_tx; struct qe_bd* tx_bd_base; struct sk_buff** tx_skbuff; scalar_t__ dma_tx_addr; scalar_t__ tx_buffer; struct net_device* ndev; } ;
struct sk_buff {scalar_t__ len; } ;
struct qe_bd {int status; int buf; } ;
struct TYPE_2__ {int tx_packets; int tx_carrier_errors; int tx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int TX_BD_RING_LEN ;
 int TX_RING_MOD_MASK (int ) ;
 int T_CT_S ;
 int T_R_S ;
 int T_UN_S ;
 int T_W_S ;
 scalar_t__ be32_to_cpu (int ) ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int hdlc_tx_restart (struct ucc_hdlc_private*) ;
 int ioread16be (int *) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int netdev_completed_queue (struct net_device*,int,unsigned int) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int hdlc_tx_done(struct ucc_hdlc_private *priv)
{

 struct net_device *dev = priv->ndev;
 unsigned int bytes_sent = 0;
 int howmany = 0;
 struct qe_bd *bd;
 u16 bd_status;
 int tx_restart = 0;

 bd = priv->dirty_tx;
 bd_status = ioread16be(&bd->status);


 while ((bd_status & T_R_S) == 0) {
  struct sk_buff *skb;

  if (bd_status & T_UN_S) {
   dev->stats.tx_fifo_errors++;
   tx_restart = 1;
  }
  if (bd_status & T_CT_S) {
   dev->stats.tx_carrier_errors++;
   tx_restart = 1;
  }





  skb = priv->tx_skbuff[priv->skb_dirtytx];
  if (!skb)
   break;
  howmany++;
  bytes_sent += skb->len;
  dev->stats.tx_packets++;
  memset(priv->tx_buffer +
         (be32_to_cpu(bd->buf) - priv->dma_tx_addr),
         0, skb->len);
  dev_consume_skb_irq(skb);

  priv->tx_skbuff[priv->skb_dirtytx] = ((void*)0);
  priv->skb_dirtytx =
      (priv->skb_dirtytx +
       1) & TX_RING_MOD_MASK(TX_BD_RING_LEN);


  if (netif_queue_stopped(dev))
   netif_wake_queue(dev);


  if (!(bd_status & T_W_S))
   bd += 1;
  else
   bd = priv->tx_bd_base;
  bd_status = ioread16be(&bd->status);
 }
 priv->dirty_tx = bd;

 if (tx_restart)
  hdlc_tx_restart(priv);

 netdev_completed_queue(dev, howmany, bytes_sent);
 return 0;
}
