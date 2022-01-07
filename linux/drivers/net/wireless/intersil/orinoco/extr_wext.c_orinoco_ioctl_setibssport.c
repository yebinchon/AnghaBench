
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int ibss_port; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int set_port_type (struct orinoco_private*) ;

__attribute__((used)) static int orinoco_ioctl_setibssport(struct net_device *dev,
         struct iw_request_info *info,
         void *wrqu,
         char *extra)

{
 struct orinoco_private *priv = ndev_priv(dev);
 int val = *((int *) extra);
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 priv->ibss_port = val;


 set_port_type(priv);

 orinoco_unlock(priv, &flags);
 return -EINPROGRESS;
}
