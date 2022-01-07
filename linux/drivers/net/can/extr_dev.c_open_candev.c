
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ bitrate; } ;
struct TYPE_3__ {scalar_t__ bitrate; } ;
struct can_priv {int ctrlmode; TYPE_2__ bittiming; TYPE_1__ data_bittiming; } ;


 int CAN_CTRLMODE_FD ;
 int EINVAL ;
 int netdev_err (struct net_device*,char*) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

int open_candev(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 if (!priv->bittiming.bitrate) {
  netdev_err(dev, "bit-timing not yet defined\n");
  return -EINVAL;
 }


 if ((priv->ctrlmode & CAN_CTRLMODE_FD) &&
     (!priv->data_bittiming.bitrate ||
      priv->data_bittiming.bitrate < priv->bittiming.bitrate)) {
  netdev_err(dev, "incorrect/missing data bit-timing\n");
  return -EINVAL;
 }


 if (!netif_carrier_ok(dev))
  netif_carrier_on(dev);

 return 0;
}
