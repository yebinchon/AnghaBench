
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct orinoco_private {int dummy; } ;
struct net_device {int dummy; } ;


 struct wireless_dev* netdev_priv (struct net_device*) ;
 struct orinoco_private* wdev_priv (struct wireless_dev*) ;

__attribute__((used)) static inline struct orinoco_private *ndev_priv(struct net_device *dev)
{
 struct wireless_dev *wdev = netdev_priv(dev);
 return wdev_priv(wdev);
}
