
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gs_usb {int rx_submitted; int active_channels; } ;
struct gs_can {TYPE_1__* tx_context; int active_tx_urbs; int tx_submitted; struct gs_usb* parent; } ;
struct TYPE_2__ {int echo_id; struct gs_can* dev; } ;


 int GS_MAX_TX_URBS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_set (int *,int ) ;
 int close_candev (struct net_device*) ;
 int gs_cmd_reset (struct gs_can*) ;
 struct gs_can* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int gs_can_close(struct net_device *netdev)
{
 int rc;
 struct gs_can *dev = netdev_priv(netdev);
 struct gs_usb *parent = dev->parent;

 netif_stop_queue(netdev);


 if (atomic_dec_and_test(&parent->active_channels))
  usb_kill_anchored_urbs(&parent->rx_submitted);


 usb_kill_anchored_urbs(&dev->tx_submitted);
 atomic_set(&dev->active_tx_urbs, 0);


 rc = gs_cmd_reset(dev);
 if (rc < 0)
  netdev_warn(netdev, "Couldn't shutdown device (err=%d)", rc);


 for (rc = 0; rc < GS_MAX_TX_URBS; rc++) {
  dev->tx_context[rc].dev = dev;
  dev->tx_context[rc].echo_id = GS_MAX_TX_URBS;
 }


 close_candev(netdev);

 return 0;
}
