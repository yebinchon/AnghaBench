
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int task_lock; int mii_if; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int rhine_set_carrier (int *) ;

__attribute__((used)) static int netdev_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct rhine_private *rp = netdev_priv(dev);
 int rc;

 mutex_lock(&rp->task_lock);
 rc = mii_ethtool_set_link_ksettings(&rp->mii_if, cmd);
 rhine_set_carrier(&rp->mii_if);
 mutex_unlock(&rp->task_lock);

 return rc;
}
