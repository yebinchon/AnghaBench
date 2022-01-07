
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_berr_counter {int dummy; } ;
struct kvaser_usb_net_priv {struct can_berr_counter bec; int channel; int dev; } ;


 int CMD_GET_CHIP_STATE_REQ ;
 int kvaser_usb_hydra_send_simple_cmd (int ,int ,int ) ;
 struct kvaser_usb_net_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int kvaser_usb_hydra_get_berr_counter(const struct net_device *netdev,
          struct can_berr_counter *bec)
{
 struct kvaser_usb_net_priv *priv = netdev_priv(netdev);
 int err;

 err = kvaser_usb_hydra_send_simple_cmd(priv->dev,
            CMD_GET_CHIP_STATE_REQ,
            priv->channel);
 if (err)
  return err;

 *bec = priv->bec;

 return 0;
}
