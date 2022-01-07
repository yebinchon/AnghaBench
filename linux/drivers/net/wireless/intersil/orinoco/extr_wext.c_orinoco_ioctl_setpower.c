
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int pm_on; int pm_mcast; int pm_timeout; int pm_period; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; scalar_t__ disabled; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;

 int IW_POWER_MODE ;

 int IW_POWER_PERIOD ;
 int IW_POWER_TIMEOUT ;

 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setpower(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *prq,
      char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int err = -EINPROGRESS;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 if (prq->disabled) {
  priv->pm_on = 0;
 } else {
  switch (prq->flags & IW_POWER_MODE) {
  case 128:
   priv->pm_mcast = 0;
   priv->pm_on = 1;
   break;
  case 130:
   priv->pm_mcast = 1;
   priv->pm_on = 1;
   break;
  case 129:

   break;
  default:
   err = -EINVAL;
   goto out;
  }

  if (prq->flags & IW_POWER_TIMEOUT) {
   priv->pm_on = 1;
   priv->pm_timeout = prq->value / 1000;
  }
  if (prq->flags & IW_POWER_PERIOD) {
   priv->pm_on = 1;
   priv->pm_period = prq->value / 1000;
  }


  if (!priv->pm_on) {
   err = -EINVAL;
   goto out;
  }
 }

 out:
 orinoco_unlock(priv, &flags);

 return err;
}
