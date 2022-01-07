
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int task_lock; int mii_if; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rhine_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct rhine_private *rp = netdev_priv(dev);

 mutex_lock(&rp->task_lock);
 mii_ethtool_get_link_ksettings(&rp->mii_if, cmd);
 mutex_unlock(&rp->task_lock);

 return 0;
}
