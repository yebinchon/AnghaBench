
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int prefer_port3; int has_port3; int has_ibss; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int set_port_type (struct orinoco_private*) ;

__attribute__((used)) static int orinoco_ioctl_setport3(struct net_device *dev,
      struct iw_request_info *info,
      void *wrqu,
      char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int val = *((int *) extra);
 int err = 0;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 switch (val) {
 case 0:
  if (!priv->has_ibss) {
   err = -EINVAL;
   break;
  }
  priv->prefer_port3 = 0;

  break;

 case 1:
  if (!priv->has_port3) {
   err = -EINVAL;
   break;
  }
  priv->prefer_port3 = 1;
  break;

 default:
  err = -EINVAL;
 }

 if (!err) {

  set_port_type(priv);
  err = -EINPROGRESS;
 }

 orinoco_unlock(priv, &flags);

 return err;
}
