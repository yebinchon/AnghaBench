
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smc911x_local {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct smc911x_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void smc911x_ethtool_setmsglevel(struct net_device *dev, u32 level)
{
 struct smc911x_local *lp = netdev_priv(dev);
 lp->msg_enable = level;
}
