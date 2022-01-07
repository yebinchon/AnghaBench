
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {int lock; TYPE_1__ hw; } ;
typedef int netdev_features_t ;


 scalar_t__ REG_MAC_CTRL ;
 int __atlx_vlan_mode (int ,int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct atlx_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atlx_vlan_mode(struct net_device *netdev,
 netdev_features_t features)
{
 struct atlx_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;
 u32 ctrl;

 spin_lock_irqsave(&adapter->lock, flags);

 ctrl = ioread32(adapter->hw.hw_addr + REG_MAC_CTRL);
 __atlx_vlan_mode(features, &ctrl);
 iowrite32(ctrl, adapter->hw.hw_addr + REG_MAC_CTRL);

 spin_unlock_irqrestore(&adapter->lock, flags);
}
