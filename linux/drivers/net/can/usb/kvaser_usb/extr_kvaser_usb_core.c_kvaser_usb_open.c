
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct kvaser_usb_net_priv {TYPE_1__ can; struct kvaser_usb* dev; } ;
struct kvaser_usb {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* dev_set_opt_mode ) (struct kvaser_usb_net_priv*) ;int (* dev_start_chip ) (struct kvaser_usb_net_priv*) ;} ;


 int CAN_STATE_ERROR_ACTIVE ;
 int close_candev (struct net_device*) ;
 int kvaser_usb_setup_rx_urbs (struct kvaser_usb*) ;
 struct kvaser_usb_net_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int open_candev (struct net_device*) ;
 int stub1 (struct kvaser_usb_net_priv*) ;
 int stub2 (struct kvaser_usb_net_priv*) ;

__attribute__((used)) static int kvaser_usb_open(struct net_device *netdev)
{
 struct kvaser_usb_net_priv *priv = netdev_priv(netdev);
 struct kvaser_usb *dev = priv->dev;
 int err;

 err = open_candev(netdev);
 if (err)
  return err;

 err = kvaser_usb_setup_rx_urbs(dev);
 if (err)
  goto error;

 err = dev->ops->dev_set_opt_mode(priv);
 if (err)
  goto error;

 err = dev->ops->dev_start_chip(priv);
 if (err) {
  netdev_warn(netdev, "Cannot start device, error %d\n", err);
  goto error;
 }

 priv->can.state = CAN_STATE_ERROR_ACTIVE;

 return 0;

error:
 close_candev(netdev);
 return err;
}
