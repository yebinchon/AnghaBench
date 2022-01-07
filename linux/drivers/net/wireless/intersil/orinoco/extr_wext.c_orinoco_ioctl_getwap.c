
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; int sa_family; } ;
struct orinoco_private {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int EBUSY ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_hw_get_current_bssid (struct orinoco_private*,int ) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_getwap(struct net_device *dev,
    struct iw_request_info *info,
    struct sockaddr *ap_addr,
    char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);

 int err = 0;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 ap_addr->sa_family = ARPHRD_ETHER;
 err = orinoco_hw_get_current_bssid(priv, ap_addr->sa_data);

 orinoco_unlock(priv, &flags);

 return err;
}
