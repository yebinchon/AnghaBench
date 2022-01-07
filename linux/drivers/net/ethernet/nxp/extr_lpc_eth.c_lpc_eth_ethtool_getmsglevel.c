
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdata_local {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct netdata_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 lpc_eth_ethtool_getmsglevel(struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);

 return pldat->msg_enable;
}
