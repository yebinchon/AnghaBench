
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int msg_enable; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 qlcnic_get_msglevel(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 return adapter->ahw->msg_enable;
}
