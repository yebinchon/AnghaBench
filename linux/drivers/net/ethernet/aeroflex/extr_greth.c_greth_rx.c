
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; } ;
struct net_device {TYPE_2__ stats; int dev; } ;
struct greth_private {int rx_cur; int devlock; int dev; TYPE_1__* regs; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int stat; int addr; } ;
struct TYPE_3__ {int status; } ;


 int DMA_FROM_DEVICE ;
 int GRETH_BD_EN ;
 int GRETH_BD_IE ;
 int GRETH_BD_LEN ;
 int GRETH_BD_WR ;
 int GRETH_INT_RE ;
 int GRETH_INT_RX ;
 int GRETH_REGSAVE (int ,int) ;
 int GRETH_RXBD_ERR_AE ;
 int GRETH_RXBD_ERR_CRC ;
 int GRETH_RXBD_ERR_FT ;
 int GRETH_RXBD_ERR_OE ;
 scalar_t__ GRETH_RXBD_NUM_MASK ;
 int GRETH_RXBD_STATUS ;
 int MAX_FRAME_SIZE ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ NEXT_RX (scalar_t__) ;
 int dev_warn (int *,char*) ;
 int dma_sync_single_for_cpu (int ,int,int,int ) ;
 int dma_sync_single_for_device (int ,int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int greth_enable_rx (struct greth_private*) ;
 int greth_print_rx_packet (int ,int) ;
 int greth_read_bd (int *) ;
 int greth_write_bd (int *,int) ;
 int mb () ;
 scalar_t__ net_ratelimit () ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct greth_private*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int phys_to_virt (int) ;
 int skb_put_data (struct sk_buff*,int ,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int greth_rx(struct net_device *dev, int limit)
{
 struct greth_private *greth;
 struct greth_bd *bdp;
 struct sk_buff *skb;
 int pkt_len;
 int bad, count;
 u32 status, dma_addr;
 unsigned long flags;

 greth = netdev_priv(dev);

 for (count = 0; count < limit; ++count) {

  bdp = greth->rx_bd_base + greth->rx_cur;
  GRETH_REGSAVE(greth->regs->status, GRETH_INT_RE | GRETH_INT_RX);
  mb();
  status = greth_read_bd(&bdp->stat);

  if (unlikely(status & GRETH_BD_EN)) {
   break;
  }

  dma_addr = greth_read_bd(&bdp->addr);
  bad = 0;


  if (unlikely(status & GRETH_RXBD_STATUS)) {
   if (status & GRETH_RXBD_ERR_FT) {
    dev->stats.rx_length_errors++;
    bad = 1;
   }
   if (status & (GRETH_RXBD_ERR_AE | GRETH_RXBD_ERR_OE)) {
    dev->stats.rx_frame_errors++;
    bad = 1;
   }
   if (status & GRETH_RXBD_ERR_CRC) {
    dev->stats.rx_crc_errors++;
    bad = 1;
   }
  }
  if (unlikely(bad)) {
   dev->stats.rx_errors++;

  } else {

   pkt_len = status & GRETH_BD_LEN;

   skb = netdev_alloc_skb(dev, pkt_len + NET_IP_ALIGN);

   if (unlikely(skb == ((void*)0))) {

    if (net_ratelimit())
     dev_warn(&dev->dev, "low on memory - " "packet dropped\n");

    dev->stats.rx_dropped++;

   } else {
    skb_reserve(skb, NET_IP_ALIGN);

    dma_sync_single_for_cpu(greth->dev,
       dma_addr,
       pkt_len,
       DMA_FROM_DEVICE);

    if (netif_msg_pktdata(greth))
     greth_print_rx_packet(phys_to_virt(dma_addr), pkt_len);

    skb_put_data(skb, phys_to_virt(dma_addr),
          pkt_len);

    skb->protocol = eth_type_trans(skb, dev);
    dev->stats.rx_bytes += pkt_len;
    dev->stats.rx_packets++;
    netif_receive_skb(skb);
   }
  }

  status = GRETH_BD_EN | GRETH_BD_IE;
  if (greth->rx_cur == GRETH_RXBD_NUM_MASK) {
   status |= GRETH_BD_WR;
  }

  wmb();
  greth_write_bd(&bdp->stat, status);

  dma_sync_single_for_device(greth->dev, dma_addr, MAX_FRAME_SIZE, DMA_FROM_DEVICE);

  spin_lock_irqsave(&greth->devlock, flags);
  greth_enable_rx(greth);
  spin_unlock_irqrestore(&greth->devlock, flags);

  greth->rx_cur = NEXT_RX(greth->rx_cur);
 }

 return count;
}
