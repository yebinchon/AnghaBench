
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct emac_board_info {int tx_fifo_stat; int lock; scalar_t__ membase; } ;


 scalar_t__ EMAC_TX_CTL0_REG ;
 scalar_t__ EMAC_TX_CTL1_REG ;
 scalar_t__ EMAC_TX_INS_REG ;
 scalar_t__ EMAC_TX_IO_DATA_REG ;
 scalar_t__ EMAC_TX_PL0_REG ;
 scalar_t__ EMAC_TX_PL1_REG ;
 int NETDEV_TX_OK ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int emac_outblk_32bit (scalar_t__,int ,int) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int emac_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 unsigned long channel;
 unsigned long flags;

 channel = db->tx_fifo_stat & 3;
 if (channel == 3)
  return 1;

 channel = (channel == 1 ? 1 : 0);

 spin_lock_irqsave(&db->lock, flags);

 writel(channel, db->membase + EMAC_TX_INS_REG);

 emac_outblk_32bit(db->membase + EMAC_TX_IO_DATA_REG,
   skb->data, skb->len);
 dev->stats.tx_bytes += skb->len;

 db->tx_fifo_stat |= 1 << channel;

 if (channel == 0) {

  writel(skb->len, db->membase + EMAC_TX_PL0_REG);

  writel(readl(db->membase + EMAC_TX_CTL0_REG) | 1,
         db->membase + EMAC_TX_CTL0_REG);


  netif_trans_update(dev);
 } else if (channel == 1) {

  writel(skb->len, db->membase + EMAC_TX_PL1_REG);

  writel(readl(db->membase + EMAC_TX_CTL1_REG) | 1,
         db->membase + EMAC_TX_CTL1_REG);


  netif_trans_update(dev);
 }

 if ((db->tx_fifo_stat & 3) == 3) {

  netif_stop_queue(dev);
 }

 spin_unlock_irqrestore(&db->lock, flags);


 dev_consume_skb_any(skb);

 return NETDEV_TX_OK;
}
