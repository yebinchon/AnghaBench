
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct fjes_adapter {int stats64; } ;


 int memcpy (struct rtnl_link_stats64*,int *,int) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
fjes_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);

 memcpy(stats, &adapter->stats64, sizeof(struct rtnl_link_stats64));
}
