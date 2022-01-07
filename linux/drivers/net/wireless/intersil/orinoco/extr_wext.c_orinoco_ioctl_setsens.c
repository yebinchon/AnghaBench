
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int ap_density; int has_sensitivity; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setsens(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *srq,
     char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int val = srq->value;
 unsigned long flags;

 if (!priv->has_sensitivity)
  return -EOPNOTSUPP;

 if ((val < 1) || (val > 3))
  return -EINVAL;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;
 priv->ap_density = val;
 orinoco_unlock(priv, &flags);

 return -EINPROGRESS;
}
