
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbe_adapter {TYPE_2__** tx_ring; TYPE_1__** rx_ring; } ;
struct TYPE_4__ {scalar_t__ reg_idx; } ;
struct TYPE_3__ {scalar_t__ reg_idx; } ;


 scalar_t__ ixgbe_cache_ring_dcb (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_cache_ring_dcb_sriov (struct ixgbe_adapter*) ;
 int ixgbe_cache_ring_rss (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_cache_ring_sriov (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
{

 adapter->rx_ring[0]->reg_idx = 0;
 adapter->tx_ring[0]->reg_idx = 0;
 if (ixgbe_cache_ring_sriov(adapter))
  return;

 ixgbe_cache_ring_rss(adapter);
}
