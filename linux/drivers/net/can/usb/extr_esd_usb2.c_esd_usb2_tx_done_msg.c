
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_stats {int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct esd_usb2_net_priv {int active_tx_jobs; struct esd_tx_urb_context* tx_contexts; struct net_device* netdev; } ;
struct TYPE_3__ {int hnd; int status; } ;
struct TYPE_4__ {TYPE_1__ txdone; } ;
struct esd_usb2_msg {TYPE_2__ msg; } ;
struct esd_tx_urb_context {int echo_index; scalar_t__ dlc; } ;


 int MAX_TX_URBS ;
 int atomic_dec (int *) ;
 int can_free_echo_skb (struct net_device*,int) ;
 int can_get_echo_skb (struct net_device*,int) ;
 int netif_device_present (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void esd_usb2_tx_done_msg(struct esd_usb2_net_priv *priv,
     struct esd_usb2_msg *msg)
{
 struct net_device_stats *stats = &priv->netdev->stats;
 struct net_device *netdev = priv->netdev;
 struct esd_tx_urb_context *context;

 if (!netif_device_present(netdev))
  return;

 context = &priv->tx_contexts[msg->msg.txdone.hnd & (MAX_TX_URBS - 1)];

 if (!msg->msg.txdone.status) {
  stats->tx_packets++;
  stats->tx_bytes += context->dlc;
  can_get_echo_skb(netdev, context->echo_index);
 } else {
  stats->tx_errors++;
  can_free_echo_skb(netdev, context->echo_index);
 }


 context->echo_index = MAX_TX_URBS;
 atomic_dec(&priv->active_tx_jobs);

 netif_wake_queue(netdev);
}
