
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int flags; } ;


 int IXGBEVF_FLAGS_LEGACY_RX ;
 int IXGBEVF_PRIV_FLAGS_LEGACY_RX ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ixgbevf_get_priv_flags(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 u32 priv_flags = 0;

 if (adapter->flags & IXGBEVF_FLAGS_LEGACY_RX)
  priv_flags |= IXGBEVF_PRIV_FLAGS_LEGACY_RX;

 return priv_flags;
}
