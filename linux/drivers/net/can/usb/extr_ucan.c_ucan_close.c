
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct ucan_priv {int netdev; int rx_urbs; int tx_urbs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_STOPPED ;
 int UCAN_COMMAND_RESET ;
 int UCAN_COMMAND_STOP ;
 int close_candev (int ) ;
 int netdev_err (int ,char*,int) ;
 struct ucan_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ucan_ctrl_command_out (struct ucan_priv*,int ,int ,int ) ;
 int ucan_release_context_array (struct ucan_priv*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int ucan_close(struct net_device *netdev)
{
 int ret;
 struct ucan_priv *up = netdev_priv(netdev);

 up->can.state = CAN_STATE_STOPPED;


 usb_kill_anchored_urbs(&up->tx_urbs);


 usb_kill_anchored_urbs(&up->rx_urbs);


 ret = ucan_ctrl_command_out(up, UCAN_COMMAND_STOP, 0, 0);
 if (ret < 0)
  netdev_err(up->netdev,
      "could not stop device, code: %d\n",
      ret);

 ret = ucan_ctrl_command_out(up, UCAN_COMMAND_RESET, 0, 0);
 if (ret < 0)
  netdev_err(up->netdev,
      "could not reset device, code: %d\n",
      ret);

 netif_stop_queue(netdev);

 ucan_release_context_array(up);

 close_candev(up->netdev);
 return 0;
}
