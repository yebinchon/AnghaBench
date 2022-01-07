
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct kvaser_usb_tx_urb_context {size_t echo_index; int dlc; } ;
struct kvaser_usb_net_priv {int tx_contexts_lock; TYPE_3__* netdev; int active_tx_contexts; struct kvaser_usb_tx_urb_context* tx_contexts; } ;
struct kvaser_usb {size_t max_tx_urbs; } ;
struct TYPE_7__ {int flags; } ;
struct kvaser_cmd_ext {TYPE_2__ tx_ack; } ;
struct TYPE_6__ {scalar_t__ cmd_no; } ;
struct kvaser_cmd {TYPE_1__ header; } ;
struct TYPE_8__ {struct net_device_stats stats; } ;


 scalar_t__ CMD_EXTENDED ;
 int KVASER_USB_HYDRA_CF_FLAG_ABL ;
 int KVASER_USB_HYDRA_CF_FLAG_OSM_NACK ;
 scalar_t__ can_dlc2len (int ) ;
 int can_get_echo_skb (TYPE_3__*,size_t) ;
 size_t kvaser_usb_hydra_get_cmd_transid (struct kvaser_cmd const*) ;
 struct kvaser_usb_net_priv* kvaser_usb_hydra_net_priv_from_cmd (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_one_shot_fail (struct kvaser_usb_net_priv*,struct kvaser_cmd_ext*) ;
 int le32_to_cpu (int ) ;
 int netif_device_present (TYPE_3__*) ;
 int netif_wake_queue (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_usb_hydra_tx_acknowledge(const struct kvaser_usb *dev,
         const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_tx_urb_context *context;
 struct kvaser_usb_net_priv *priv;
 unsigned long irq_flags;
 bool one_shot_fail = 0;
 u16 transid = kvaser_usb_hydra_get_cmd_transid(cmd);

 priv = kvaser_usb_hydra_net_priv_from_cmd(dev, cmd);
 if (!priv)
  return;

 if (!netif_device_present(priv->netdev))
  return;

 if (cmd->header.cmd_no == CMD_EXTENDED) {
  struct kvaser_cmd_ext *cmd_ext = (struct kvaser_cmd_ext *)cmd;
  u32 flags = le32_to_cpu(cmd_ext->tx_ack.flags);

  if (flags & (KVASER_USB_HYDRA_CF_FLAG_OSM_NACK |
        KVASER_USB_HYDRA_CF_FLAG_ABL)) {
   kvaser_usb_hydra_one_shot_fail(priv, cmd_ext);
   one_shot_fail = 1;
  }
 }

 context = &priv->tx_contexts[transid % dev->max_tx_urbs];
 if (!one_shot_fail) {
  struct net_device_stats *stats = &priv->netdev->stats;

  stats->tx_packets++;
  stats->tx_bytes += can_dlc2len(context->dlc);
 }

 spin_lock_irqsave(&priv->tx_contexts_lock, irq_flags);

 can_get_echo_skb(priv->netdev, context->echo_index);
 context->echo_index = dev->max_tx_urbs;
 --priv->active_tx_contexts;
 netif_wake_queue(priv->netdev);

 spin_unlock_irqrestore(&priv->tx_contexts_lock, irq_flags);
}
