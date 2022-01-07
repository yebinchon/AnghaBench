
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int last_vfgorc; int last_vfgotc; int base_vfgorc; int base_vfgotc; void* last_vfmprc; void* base_vfmprc; void* last_vfgptc; void* base_vfgptc; void* last_vfgprc; void* base_vfgprc; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {TYPE_1__ stats; struct ixgbe_hw hw; } ;


 void* IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFGORC_LSB ;
 int IXGBE_VFGORC_MSB ;
 int IXGBE_VFGOTC_LSB ;
 int IXGBE_VFGOTC_MSB ;
 int IXGBE_VFGPRC ;
 int IXGBE_VFGPTC ;
 int IXGBE_VFMPRC ;

__attribute__((used)) static void ixgbevf_init_last_counter_stats(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 adapter->stats.last_vfgprc = IXGBE_READ_REG(hw, IXGBE_VFGPRC);
 adapter->stats.last_vfgorc = IXGBE_READ_REG(hw, IXGBE_VFGORC_LSB);
 adapter->stats.last_vfgorc |=
  (((u64)(IXGBE_READ_REG(hw, IXGBE_VFGORC_MSB))) << 32);
 adapter->stats.last_vfgptc = IXGBE_READ_REG(hw, IXGBE_VFGPTC);
 adapter->stats.last_vfgotc = IXGBE_READ_REG(hw, IXGBE_VFGOTC_LSB);
 adapter->stats.last_vfgotc |=
  (((u64)(IXGBE_READ_REG(hw, IXGBE_VFGOTC_MSB))) << 32);
 adapter->stats.last_vfmprc = IXGBE_READ_REG(hw, IXGBE_VFMPRC);

 adapter->stats.base_vfgprc = adapter->stats.last_vfgprc;
 adapter->stats.base_vfgorc = adapter->stats.last_vfgorc;
 adapter->stats.base_vfgptc = adapter->stats.last_vfgptc;
 adapter->stats.base_vfgotc = adapter->stats.last_vfgotc;
 adapter->stats.base_vfmprc = adapter->stats.last_vfmprc;
}
