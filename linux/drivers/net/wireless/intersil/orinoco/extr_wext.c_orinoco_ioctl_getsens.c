
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;
struct orinoco_private {int has_sensitivity; struct hermes hw; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ fixed; int value; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int HERMES_RID_CNFSYSTEMSCALE ;
 int USER_BAP ;
 int hermes_read_wordrec (struct hermes*,int ,int ,int *) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_getsens(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *srq,
     char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct hermes *hw = &priv->hw;
 u16 val;
 int err;
 unsigned long flags;

 if (!priv->has_sensitivity)
  return -EOPNOTSUPP;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;
 err = hermes_read_wordrec(hw, USER_BAP,
      HERMES_RID_CNFSYSTEMSCALE, &val);
 orinoco_unlock(priv, &flags);

 if (err)
  return err;

 srq->value = val;
 srq->fixed = 0;

 return 0;
}
