
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int preamble; int has_preamble; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EOPNOTSUPP ;
 struct orinoco_private* ndev_priv (struct net_device*) ;

__attribute__((used)) static int orinoco_ioctl_getpreamble(struct net_device *dev,
         struct iw_request_info *info,
         void *wrqu,
         char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int *val = (int *) extra;

 if (!priv->has_preamble)
  return -EOPNOTSUPP;

 *val = priv->preamble;
 return 0;
}
