
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_dropped; int rx_packets; int rx_bytes; int tx_errors; } ;
struct kvaser_pciefd_rx_packet {int* header; } ;
struct TYPE_5__ {int arbitration_lost; } ;
struct TYPE_6__ {TYPE_3__* dev; TYPE_1__ can_stats; } ;
struct kvaser_pciefd_can {TYPE_2__ can; } ;
struct can_frame {scalar_t__ can_dlc; int can_id; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;


 int CAN_ERR_ACK ;
 int CAN_ERR_BUSERROR ;
 int CAN_ERR_LOSTARB ;
 int KVASER_PCIEFD_APACKET_ABL ;
 struct sk_buff* alloc_can_err_skb (TYPE_3__*,struct can_frame**) ;
 int netdev_warn (TYPE_3__*,char*) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void kvaser_pciefd_handle_nack_packet(struct kvaser_pciefd_can *can,
          struct kvaser_pciefd_rx_packet *p)
{
 struct sk_buff *skb;
 struct net_device_stats *stats = &can->can.dev->stats;
 struct can_frame *cf;

 skb = alloc_can_err_skb(can->can.dev, &cf);

 stats->tx_errors++;
 if (p->header[0] & KVASER_PCIEFD_APACKET_ABL) {
  if (skb)
   cf->can_id |= CAN_ERR_LOSTARB;
  can->can.can_stats.arbitration_lost++;
 } else if (skb) {
  cf->can_id |= CAN_ERR_ACK;
 }

 if (skb) {
  cf->can_id |= CAN_ERR_BUSERROR;
  stats->rx_bytes += cf->can_dlc;
  stats->rx_packets++;
  netif_rx(skb);
 } else {
  stats->rx_dropped++;
  netdev_warn(can->can.dev, "No memory left for err_skb\n");
 }
}
