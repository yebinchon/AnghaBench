
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct atl2_adapter {int hw; } ;
typedef int netdev_features_t ;


 int ATL2_READ_REG (int *,int ) ;
 int ATL2_WRITE_REG (int *,int ,int ) ;
 int REG_MAC_CTRL ;
 int __atl2_vlan_mode (int ,int *) ;
 int atl2_irq_disable (struct atl2_adapter*) ;
 int atl2_irq_enable (struct atl2_adapter*) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl2_vlan_mode(struct net_device *netdev,
 netdev_features_t features)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 u32 ctrl;

 atl2_irq_disable(adapter);

 ctrl = ATL2_READ_REG(&adapter->hw, REG_MAC_CTRL);
 __atl2_vlan_mode(features, &ctrl);
 ATL2_WRITE_REG(&adapter->hw, REG_MAC_CTRL, ctrl);

 atl2_irq_enable(adapter);
}
