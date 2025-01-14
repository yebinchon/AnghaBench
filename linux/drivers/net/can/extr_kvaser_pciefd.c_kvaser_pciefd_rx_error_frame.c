
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct kvaser_pciefd_rx_packet {int* header; int timestamp; } ;
struct TYPE_7__ {int txerr; int rxerr; } ;
struct TYPE_5__ {int bus_error; int restarts; } ;
struct TYPE_6__ {int state; TYPE_1__ can_stats; scalar_t__ restart_ms; struct net_device* dev; } ;
struct kvaser_pciefd_can {TYPE_4__* kv_pcie; TYPE_3__ bec; TYPE_2__ can; int err_rep_cnt; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int can_id; } ;
struct can_berr_counter {int txerr; int rxerr; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;
struct TYPE_8__ {int freq_to_ticks_div; } ;


 int CAN_ERR_BUSERROR ;
 int CAN_ERR_RESTARTED ;
 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int ENOMEM ;
 int KVASER_PCIEFD_SPACK_RXERR_SHIFT ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int div_u64 (int,int ) ;
 int kvaser_pciefd_change_state (struct kvaser_pciefd_can*,struct can_frame*,int,int,int) ;
 int kvaser_pciefd_packet_to_state (struct kvaser_pciefd_rx_packet*,struct can_berr_counter*,int*,int*,int*) ;
 int netif_rx (struct sk_buff*) ;
 int ns_to_ktime (int ) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static int kvaser_pciefd_rx_error_frame(struct kvaser_pciefd_can *can,
     struct kvaser_pciefd_rx_packet *p)
{
 struct can_berr_counter bec;
 enum can_state old_state, new_state, tx_state, rx_state;
 struct net_device *ndev = can->can.dev;
 struct sk_buff *skb;
 struct can_frame *cf = ((void*)0);
 struct skb_shared_hwtstamps *shhwtstamps;
 struct net_device_stats *stats = &ndev->stats;

 old_state = can->can.state;

 bec.txerr = p->header[0] & 0xff;
 bec.rxerr = (p->header[0] >> KVASER_PCIEFD_SPACK_RXERR_SHIFT) & 0xff;

 kvaser_pciefd_packet_to_state(p, &bec, &new_state, &tx_state,
          &rx_state);

 skb = alloc_can_err_skb(ndev, &cf);

 if (new_state != old_state) {
  kvaser_pciefd_change_state(can, cf, new_state, tx_state,
        rx_state);

  if (old_state == CAN_STATE_BUS_OFF &&
      new_state == CAN_STATE_ERROR_ACTIVE &&
      can->can.restart_ms) {
   can->can.can_stats.restarts++;
   if (skb)
    cf->can_id |= CAN_ERR_RESTARTED;
  }
 }

 can->err_rep_cnt++;
 can->can.can_stats.bus_error++;
 stats->rx_errors++;

 can->bec.txerr = bec.txerr;
 can->bec.rxerr = bec.rxerr;

 if (!skb) {
  stats->rx_dropped++;
  return -ENOMEM;
 }

 shhwtstamps = skb_hwtstamps(skb);
 shhwtstamps->hwtstamp =
  ns_to_ktime(div_u64(p->timestamp * 1000,
        can->kv_pcie->freq_to_ticks_div));
 cf->can_id |= CAN_ERR_BUSERROR;

 cf->data[6] = bec.txerr;
 cf->data[7] = bec.rxerr;

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;

 netif_rx(skb);
 return 0;
}
