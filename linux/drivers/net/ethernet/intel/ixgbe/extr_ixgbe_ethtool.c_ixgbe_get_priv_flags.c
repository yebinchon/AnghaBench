
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int flags2; } ;


 int IXGBE_FLAG2_RX_LEGACY ;
 int IXGBE_FLAG2_VF_IPSEC_ENABLED ;
 int IXGBE_PRIV_FLAGS_LEGACY_RX ;
 int IXGBE_PRIV_FLAGS_VF_IPSEC_EN ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ixgbe_get_priv_flags(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 u32 priv_flags = 0;

 if (adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
  priv_flags |= IXGBE_PRIV_FLAGS_LEGACY_RX;

 if (adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)
  priv_flags |= IXGBE_PRIV_FLAGS_VF_IPSEC_EN;

 return priv_flags;
}
