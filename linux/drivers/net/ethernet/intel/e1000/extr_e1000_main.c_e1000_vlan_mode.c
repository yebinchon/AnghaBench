
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_adapter {int flags; } ;
typedef int netdev_features_t ;


 int __E1000_DOWN ;
 int __e1000_vlan_mode (struct e1000_adapter*,int ) ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void e1000_vlan_mode(struct net_device *netdev,
       netdev_features_t features)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_disable(adapter);

 __e1000_vlan_mode(adapter, features);

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_enable(adapter);
}
