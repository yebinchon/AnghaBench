
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de4x5_private {int (* infoleaf_fn ) (struct net_device*) ;} ;


 struct de4x5_private* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int
srom_autoconf(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);

    return lp->infoleaf_fn(dev);
}
