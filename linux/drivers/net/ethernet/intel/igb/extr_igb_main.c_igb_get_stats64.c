
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int stats64_lock; int stats64; } ;


 int igb_update_stats (struct igb_adapter*) ;
 int memcpy (struct rtnl_link_stats64*,int *,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void igb_get_stats64(struct net_device *netdev,
       struct rtnl_link_stats64 *stats)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 spin_lock(&adapter->stats64_lock);
 igb_update_stats(adapter);
 memcpy(stats, &adapter->stats64, sizeof(*stats));
 spin_unlock(&adapter->stats64_lock);
}
