
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {scalar_t__ mc_count; struct net_device* netdev; } ;


 int BE_IF_FLAGS_MULTICAST ;
 int OFF ;
 int __dev_mc_unsync (struct net_device*,int *) ;
 int be_cmd_rx_filter (struct be_adapter*,int ,int ) ;

__attribute__((used)) static void be_clear_mc_list(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 __dev_mc_unsync(netdev, ((void*)0));
 be_cmd_rx_filter(adapter, BE_IF_FLAGS_MULTICAST, OFF);
 adapter->mc_count = 0;
}
