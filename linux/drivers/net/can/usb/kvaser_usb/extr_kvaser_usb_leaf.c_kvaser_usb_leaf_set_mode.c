
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kvaser_usb_net_priv {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int CMD_START_CHIP ;
 int EOPNOTSUPP ;
 int kvaser_usb_leaf_simple_cmd_async (struct kvaser_usb_net_priv*,int ) ;
 struct kvaser_usb_net_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int kvaser_usb_leaf_set_mode(struct net_device *netdev,
        enum can_mode mode)
{
 struct kvaser_usb_net_priv *priv = netdev_priv(netdev);
 int err;

 switch (mode) {
 case 128:
  err = kvaser_usb_leaf_simple_cmd_async(priv, CMD_START_CHIP);
  if (err)
   return err;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
