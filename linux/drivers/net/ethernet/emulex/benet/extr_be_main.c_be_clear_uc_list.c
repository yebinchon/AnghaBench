
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int uc_macs; int * pmac_id; struct net_device* netdev; } ;


 int __dev_uc_unsync (struct net_device*,int *) ;
 int be_uc_mac_del (struct be_adapter*,int ) ;

__attribute__((used)) static void be_clear_uc_list(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i;

 __dev_uc_unsync(netdev, ((void*)0));
 for (i = 0; i < adapter->uc_macs; i++)
  be_uc_mac_del(adapter, adapter->pmac_id[i + 1]);

 adapter->uc_macs = 0;
}
