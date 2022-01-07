
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc35815_local {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct tc35815_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tc35815_set_msglevel(struct net_device *dev, u32 datum)
{
 struct tc35815_local *lp = netdev_priv(dev);
 lp->msg_enable = datum;
}
