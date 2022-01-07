
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct greth_private {scalar_t__ tx_free; int tx_next; int* tx_bufs_length; int devlock; int dev; struct greth_bd* tx_bd_base; TYPE_1__* regs; int netdev; } ;
struct greth_bd {int stat; int addr; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int control; } ;


 int DMA_TO_DEVICE ;
 int GRETH_BD_EN ;
 int GRETH_BD_IE ;
 int GRETH_BD_LEN ;
 int GRETH_BD_WR ;
 int GRETH_REGLOAD (int ) ;
 int GRETH_REGSAVE (int ,int) ;
 int GRETH_RXI ;
 size_t GRETH_TXBD_NUM_MASK ;
 int GRETH_TXI ;
 int MAX_FRAME_SIZE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 size_t NEXT_TX (size_t) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_sync_single_for_device (int ,int,int,int ) ;
 int greth_clean_tx (int ) ;
 int greth_enable_tx (struct greth_private*) ;
 int greth_print_tx_packet (struct sk_buff*) ;
 int greth_read_bd (int *) ;
 int greth_write_bd (int *,int) ;
 int memcpy (unsigned char*,int ,int) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct greth_private*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ phys_to_virt (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t
greth_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);
 struct greth_bd *bdp;
 int err = NETDEV_TX_OK;
 u32 status, dma_addr, ctrl;
 unsigned long flags;


 greth_clean_tx(greth->netdev);

 if (unlikely(greth->tx_free <= 0)) {
  spin_lock_irqsave(&greth->devlock, flags);
  ctrl = GRETH_REGLOAD(greth->regs->control);

  if (ctrl & GRETH_RXI)
   GRETH_REGSAVE(greth->regs->control, ctrl | GRETH_TXI);
  netif_stop_queue(dev);
  spin_unlock_irqrestore(&greth->devlock, flags);
  return NETDEV_TX_BUSY;
 }

 if (netif_msg_pktdata(greth))
  greth_print_tx_packet(skb);


 if (unlikely(skb->len > MAX_FRAME_SIZE)) {
  dev->stats.tx_errors++;
  goto out;
 }

 bdp = greth->tx_bd_base + greth->tx_next;
 dma_addr = greth_read_bd(&bdp->addr);

 memcpy((unsigned char *) phys_to_virt(dma_addr), skb->data, skb->len);

 dma_sync_single_for_device(greth->dev, dma_addr, skb->len, DMA_TO_DEVICE);

 status = GRETH_BD_EN | GRETH_BD_IE | (skb->len & GRETH_BD_LEN);
 greth->tx_bufs_length[greth->tx_next] = skb->len & GRETH_BD_LEN;


 if (greth->tx_next == GRETH_TXBD_NUM_MASK) {
  status |= GRETH_BD_WR;
 }

 greth->tx_next = NEXT_TX(greth->tx_next);
 greth->tx_free--;


 greth_write_bd(&bdp->stat, status);
 spin_lock_irqsave(&greth->devlock, flags);
 greth_enable_tx(greth);
 spin_unlock_irqrestore(&greth->devlock, flags);

out:
 dev_kfree_skb(skb);
 return err;
}
