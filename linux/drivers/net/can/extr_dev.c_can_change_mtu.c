
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int mtu; } ;
struct can_priv {int ctrlmode_static; int ctrlmode; int ctrlmode_supported; } ;



 int CAN_CTRLMODE_FD ;

 int EBUSY ;
 int EINVAL ;
 int IFF_UP ;
 struct can_priv* netdev_priv (struct net_device*) ;

int can_change_mtu(struct net_device *dev, int new_mtu)
{
 struct can_priv *priv = netdev_priv(dev);


 if (dev->flags & IFF_UP)
  return -EBUSY;


 switch (new_mtu) {
 case 128:

  if (priv->ctrlmode_static & CAN_CTRLMODE_FD)
   return -EINVAL;

  priv->ctrlmode &= ~CAN_CTRLMODE_FD;
  break;

 case 129:

  if (!(priv->ctrlmode_supported & CAN_CTRLMODE_FD) &&
      !(priv->ctrlmode_static & CAN_CTRLMODE_FD))
   return -EINVAL;

  priv->ctrlmode |= CAN_CTRLMODE_FD;
  break;

 default:
  return -EINVAL;
 }

 dev->mtu = new_mtu;
 return 0;
}
