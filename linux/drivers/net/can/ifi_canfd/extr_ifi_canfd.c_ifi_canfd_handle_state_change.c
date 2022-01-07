
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_3__ {int bus_off; int error_passive; int error_warning; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; } ;
struct ifi_canfd_priv {TYPE_2__ can; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int can_id; } ;
struct can_berr_counter {int txerr; int rxerr; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;




 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int ifi_canfd_get_berr_counter (struct net_device*,struct can_berr_counter*) ;
 int ifi_canfd_irq_enable (struct net_device*,int ) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ifi_canfd_handle_state_change(struct net_device *ndev,
      enum can_state new_state)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 struct can_berr_counter bec;

 switch (new_state) {
 case 130:

  priv->can.can_stats.error_warning++;
  priv->can.state = 130;
  break;
 case 128:

  priv->can.can_stats.error_warning++;
  priv->can.state = 128;
  break;
 case 129:

  priv->can.can_stats.error_passive++;
  priv->can.state = 129;
  break;
 case 131:

  priv->can.state = 131;
  ifi_canfd_irq_enable(ndev, 0);
  priv->can.can_stats.bus_off++;
  can_bus_off(ndev);
  break;
 default:
  break;
 }


 skb = alloc_can_err_skb(ndev, &cf);
 if (unlikely(!skb))
  return 0;

 ifi_canfd_get_berr_counter(ndev, &bec);

 switch (new_state) {
 case 128:

  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = (bec.txerr > bec.rxerr) ?
   CAN_ERR_CRTL_TX_WARNING :
   CAN_ERR_CRTL_RX_WARNING;
  cf->data[6] = bec.txerr;
  cf->data[7] = bec.rxerr;
  break;
 case 129:

  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] |= CAN_ERR_CRTL_RX_PASSIVE;
  if (bec.txerr > 127)
   cf->data[1] |= CAN_ERR_CRTL_TX_PASSIVE;
  cf->data[6] = bec.txerr;
  cf->data[7] = bec.rxerr;
  break;
 case 131:

  cf->can_id |= CAN_ERR_BUSOFF;
  break;
 default:
  break;
 }

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_receive_skb(skb);

 return 1;
}
