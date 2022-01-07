
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igbvf_adapter {int current_itr; int requested_itr; TYPE_1__* rx_ring; struct e1000_hw hw; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct TYPE_2__ {scalar_t__ itr_register; } ;


 int EINVAL ;
 int IGBVF_MAX_ITR_USECS ;
 int IGBVF_MIN_ITR_USECS ;
 int IGBVF_START_ITR ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int igbvf_set_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *ec)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 if ((ec->rx_coalesce_usecs >= IGBVF_MIN_ITR_USECS) &&
     (ec->rx_coalesce_usecs <= IGBVF_MAX_ITR_USECS)) {
  adapter->current_itr = ec->rx_coalesce_usecs << 2;
  adapter->requested_itr = 1000000000 /
     (adapter->current_itr * 256);
 } else if ((ec->rx_coalesce_usecs == 3) ||
     (ec->rx_coalesce_usecs == 2)) {
  adapter->current_itr = IGBVF_START_ITR;
  adapter->requested_itr = ec->rx_coalesce_usecs;
 } else if (ec->rx_coalesce_usecs == 0) {






  adapter->current_itr = 4;
  adapter->requested_itr = 1000000000 /
     (adapter->current_itr * 256);
 } else {
  return -EINVAL;
 }

 writel(adapter->current_itr,
        hw->hw_addr + adapter->rx_ring->itr_register);

 return 0;
}
