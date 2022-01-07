
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;


 int drv ;
 int e_err (int ,char*,int,int,int) ;
 int ixgbe_read_reg (TYPE_1__*,int) ;
 scalar_t__ ixgbe_removed (int ) ;
 int ixgbe_write_reg (TYPE_1__*,int,int) ;

__attribute__((used)) static bool reg_set_and_check(struct ixgbe_adapter *adapter, u64 *data, int reg,
         u32 mask, u32 write)
{
 u32 val, before;

 if (ixgbe_removed(adapter->hw.hw_addr)) {
  *data = 1;
  return 1;
 }
 before = ixgbe_read_reg(&adapter->hw, reg);
 ixgbe_write_reg(&adapter->hw, reg, write & mask);
 val = ixgbe_read_reg(&adapter->hw, reg);
 if ((write & mask) != (val & mask)) {
  e_err(drv, "set/check reg %04X test failed: got 0x%08X expected 0x%08X\n",
        reg, (val & mask), (write & mask));
  *data = reg;
  ixgbe_write_reg(&adapter->hw, reg, before);
  return 1;
 }
 ixgbe_write_reg(&adapter->hw, reg, before);
 return 0;
}
