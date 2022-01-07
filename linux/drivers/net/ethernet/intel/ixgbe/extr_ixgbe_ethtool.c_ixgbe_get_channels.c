
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int flags; int hw_tcs; TYPE_1__* ring_feature; int atr_sample_rate; } ;
struct ethtool_channels {int combined_count; void* other_count; void* max_other; int max_combined; } ;
struct TYPE_2__ {int indices; } ;


 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 void* NON_Q_VECTORS ;
 size_t RING_F_FDIR ;
 size_t RING_F_RSS ;
 int ixgbe_max_channels (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_get_channels(struct net_device *dev,
          struct ethtool_channels *ch)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);


 ch->max_combined = ixgbe_max_channels(adapter);


 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED) {
  ch->max_other = NON_Q_VECTORS;
  ch->other_count = NON_Q_VECTORS;
 }


 ch->combined_count = adapter->ring_feature[RING_F_RSS].indices;


 if (ch->combined_count == 1)
  return;


 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  return;


 if (adapter->hw_tcs > 1)
  return;


 if (!adapter->atr_sample_rate)
  return;


 ch->combined_count = adapter->ring_feature[RING_F_FDIR].indices;
}
