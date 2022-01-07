
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ hw_enc_features; } ;
struct be_adapter {int flags; scalar_t__ vxlan_port; int if_handle; struct net_device* netdev; } ;


 int BE_FLAGS_VXLAN_OFFLOADS ;
 int OP_CONVERT_TUNNEL_TO_NORMAL ;
 int be_cmd_manage_iface (struct be_adapter*,int ,int ) ;
 int be_cmd_set_vxlan_port (struct be_adapter*,int ) ;

__attribute__((used)) static void be_disable_vxlan_offloads(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 if (adapter->flags & BE_FLAGS_VXLAN_OFFLOADS)
  be_cmd_manage_iface(adapter, adapter->if_handle,
        OP_CONVERT_TUNNEL_TO_NORMAL);

 if (adapter->vxlan_port)
  be_cmd_set_vxlan_port(adapter, 0);

 adapter->flags &= ~BE_FLAGS_VXLAN_OFFLOADS;
 adapter->vxlan_port = 0;

 netdev->hw_enc_features = 0;
}
