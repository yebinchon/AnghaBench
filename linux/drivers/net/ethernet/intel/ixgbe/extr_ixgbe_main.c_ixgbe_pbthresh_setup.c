
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* high_water; scalar_t__* low_water; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
struct ixgbe_adapter {int hw_tcs; struct ixgbe_hw hw; } ;


 int MAX_TRAFFIC_CLASS ;
 scalar_t__ ixgbe_hpbthresh (struct ixgbe_adapter*,int) ;
 scalar_t__ ixgbe_lpbthresh (struct ixgbe_adapter*,int) ;

__attribute__((used)) static void ixgbe_pbthresh_setup(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int num_tc = adapter->hw_tcs;
 int i;

 if (!num_tc)
  num_tc = 1;

 for (i = 0; i < num_tc; i++) {
  hw->fc.high_water[i] = ixgbe_hpbthresh(adapter, i);
  hw->fc.low_water[i] = ixgbe_lpbthresh(adapter, i);


  if (hw->fc.low_water[i] > hw->fc.high_water[i])
   hw->fc.low_water[i] = 0;
 }

 for (; i < MAX_TRAFFIC_CLASS; i++)
  hw->fc.high_water[i] = 0;
}
