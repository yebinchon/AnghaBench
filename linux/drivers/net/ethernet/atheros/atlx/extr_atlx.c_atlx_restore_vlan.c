
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atlx_adapter {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int atlx_vlan_mode (TYPE_1__*,int ) ;

__attribute__((used)) static void atlx_restore_vlan(struct atlx_adapter *adapter)
{
 atlx_vlan_mode(adapter->netdev, adapter->netdev->features);
}
