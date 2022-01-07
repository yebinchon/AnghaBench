
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int open; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_commit (struct orinoco_private*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_commit(struct net_device *dev,
    struct iw_request_info *info,
    void *wrqu,
    char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 unsigned long flags;
 int err = 0;

 if (!priv->open)
  return 0;

 if (orinoco_lock(priv, &flags) != 0)
  return err;

 err = orinoco_commit(priv);

 orinoco_unlock(priv, &flags);
 return err;
}
