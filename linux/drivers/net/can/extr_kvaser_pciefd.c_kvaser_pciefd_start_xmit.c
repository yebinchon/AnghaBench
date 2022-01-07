
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct kvaser_pciefd_tx_packet {scalar_t__ data; int * header; } ;
struct TYPE_2__ {int echo_skb_max; scalar_t__* echo_skb; } ;
struct kvaser_pciefd_can {int echo_idx; int echo_lock; TYPE_1__ can; scalar_t__ reg_base; } ;
typedef int netdev_tx_t ;


 scalar_t__ KVASER_PCIEFD_CAN_TX_MAX_COUNT ;
 scalar_t__ KVASER_PCIEFD_KCAN_FIFO_LAST_REG ;
 scalar_t__ KVASER_PCIEFD_KCAN_FIFO_REG ;
 scalar_t__ KVASER_PCIEFD_KCAN_TX_NPACKETS_REG ;
 int NETDEV_TX_OK ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int iowrite32_rep (scalar_t__,scalar_t__,int) ;
 int kvaser_pciefd_prepare_tx_packet (struct kvaser_pciefd_tx_packet*,struct kvaser_pciefd_can*,struct sk_buff*) ;
 struct kvaser_pciefd_can* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t kvaser_pciefd_start_xmit(struct sk_buff *skb,
         struct net_device *netdev)
{
 struct kvaser_pciefd_can *can = netdev_priv(netdev);
 unsigned long irq_flags;
 struct kvaser_pciefd_tx_packet packet;
 int nwords;
 u8 count;

 if (can_dropped_invalid_skb(netdev, skb))
  return NETDEV_TX_OK;

 nwords = kvaser_pciefd_prepare_tx_packet(&packet, can, skb);

 spin_lock_irqsave(&can->echo_lock, irq_flags);


 can_put_echo_skb(skb, netdev, can->echo_idx);


 can->echo_idx = (can->echo_idx + 1) % can->can.echo_skb_max;


 iowrite32(packet.header[0],
    can->reg_base + KVASER_PCIEFD_KCAN_FIFO_REG);
 iowrite32(packet.header[1],
    can->reg_base + KVASER_PCIEFD_KCAN_FIFO_REG);

 if (nwords) {
  u32 data_last = ((u32 *)packet.data)[nwords - 1];


  iowrite32_rep(can->reg_base +
         KVASER_PCIEFD_KCAN_FIFO_REG, packet.data,
         nwords - 1);

  __raw_writel(data_last, can->reg_base +
        KVASER_PCIEFD_KCAN_FIFO_LAST_REG);
 } else {

  __raw_writel(0, can->reg_base +
        KVASER_PCIEFD_KCAN_FIFO_LAST_REG);
 }

 count = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_TX_NPACKETS_REG);



 if (count >= KVASER_PCIEFD_CAN_TX_MAX_COUNT ||
     can->can.echo_skb[can->echo_idx])
  netif_stop_queue(netdev);

 spin_unlock_irqrestore(&can->echo_lock, irq_flags);

 return NETDEV_TX_OK;
}
