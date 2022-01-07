
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {int eth_flags; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int eth_flags; } ;


 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 cxgb4_get_priv_flags(struct net_device *netdev)
{
 struct port_info *pi = netdev_priv(netdev);
 struct adapter *adapter = pi->adapter;

 return (adapter->eth_flags | pi->eth_flags);
}
