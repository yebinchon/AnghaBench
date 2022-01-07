
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int ibss_port; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct orinoco_private* ndev_priv (struct net_device*) ;

__attribute__((used)) static int orinoco_ioctl_getibssport(struct net_device *dev,
         struct iw_request_info *info,
         void *wrqu,
         char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int *val = (int *) extra;

 *val = priv->ibss_port;
 return 0;
}
