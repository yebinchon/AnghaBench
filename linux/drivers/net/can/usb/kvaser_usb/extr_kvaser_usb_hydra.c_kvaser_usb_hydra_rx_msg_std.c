
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct kvaser_usb_net_priv {TYPE_2__* netdev; } ;
struct kvaser_usb {int cfg; } ;
struct TYPE_4__ {int flags; int data; int dlc; int id; int err_frame_data; } ;
struct kvaser_cmd {TYPE_1__ rx_can; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int data; } ;
typedef int ktime_t ;
struct TYPE_5__ {struct net_device_stats stats; } ;


 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME ;
 int KVASER_USB_HYDRA_CF_FLAG_OVERRUN ;
 int KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME ;
 int KVASER_USB_HYDRA_EXTENDED_FRAME_ID ;
 struct sk_buff* alloc_can_skb (TYPE_2__*,struct can_frame**) ;
 scalar_t__ get_can_dlc (int ) ;
 int kvaser_usb_can_rx_over_error (TYPE_2__*) ;
 int kvaser_usb_hydra_error_frame (struct kvaser_usb_net_priv*,int *,int ) ;
 int kvaser_usb_hydra_ktime_from_rx_cmd (int ,struct kvaser_cmd const*) ;
 struct kvaser_usb_net_priv* kvaser_usb_hydra_net_priv_from_cmd (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static void kvaser_usb_hydra_rx_msg_std(const struct kvaser_usb *dev,
     const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_net_priv *priv = ((void*)0);
 struct can_frame *cf;
 struct sk_buff *skb;
 struct skb_shared_hwtstamps *shhwtstamps;
 struct net_device_stats *stats;
 u8 flags;
 ktime_t hwtstamp;

 priv = kvaser_usb_hydra_net_priv_from_cmd(dev, cmd);
 if (!priv)
  return;

 stats = &priv->netdev->stats;

 flags = cmd->rx_can.flags;
 hwtstamp = kvaser_usb_hydra_ktime_from_rx_cmd(dev->cfg, cmd);

 if (flags & KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME) {
  kvaser_usb_hydra_error_frame(priv, &cmd->rx_can.err_frame_data,
          hwtstamp);
  return;
 }

 skb = alloc_can_skb(priv->netdev, &cf);
 if (!skb) {
  stats->rx_dropped++;
  return;
 }

 shhwtstamps = skb_hwtstamps(skb);
 shhwtstamps->hwtstamp = hwtstamp;

 cf->can_id = le32_to_cpu(cmd->rx_can.id);

 if (cf->can_id & KVASER_USB_HYDRA_EXTENDED_FRAME_ID) {
  cf->can_id &= CAN_EFF_MASK;
  cf->can_id |= CAN_EFF_FLAG;
 } else {
  cf->can_id &= CAN_SFF_MASK;
 }

 if (flags & KVASER_USB_HYDRA_CF_FLAG_OVERRUN)
  kvaser_usb_can_rx_over_error(priv->netdev);

 cf->can_dlc = get_can_dlc(cmd->rx_can.dlc);

 if (flags & KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME)
  cf->can_id |= CAN_RTR_FLAG;
 else
  memcpy(cf->data, cmd->rx_can.data, cf->can_dlc);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);
}
