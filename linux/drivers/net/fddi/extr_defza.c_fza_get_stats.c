
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct fza_private {struct net_device_stats stats; } ;


 struct fza_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *fza_get_stats(struct net_device *dev)
{
 struct fza_private *fp = netdev_priv(dev);

 return &fp->stats;
}
