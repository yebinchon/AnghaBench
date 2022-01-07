
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct ixgbe_adapter {int flags2; int rx_itr_setting; struct net_device* netdev; } ;


 int IXGBE_FLAG2_RSC_CAPABLE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_MIN_RSC_ITR ;
 int NETIF_F_LRO ;
 int e_info (int ,char*) ;
 int probe ;

__attribute__((used)) static bool ixgbe_update_rsc(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;


 if (!(adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE) ||
     !(netdev->features & NETIF_F_LRO))
  return 0;


 if (adapter->rx_itr_setting == 1 ||
     adapter->rx_itr_setting > IXGBE_MIN_RSC_ITR) {
  if (!(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)) {
   adapter->flags2 |= IXGBE_FLAG2_RSC_ENABLED;
   e_info(probe, "rx-usecs value high enough to re-enable RSC\n");
   return 1;
  }

 } else if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED) {
  adapter->flags2 &= ~IXGBE_FLAG2_RSC_ENABLED;
  e_info(probe, "rx-usecs set too low, disabling RSC\n");
  return 1;
 }
 return 0;
}
