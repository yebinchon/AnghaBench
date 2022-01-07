
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct atl1_adapter {int msg_enable; } ;


 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 atl1_get_msglevel(struct net_device *netdev)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 return adapter->msg_enable;
}
