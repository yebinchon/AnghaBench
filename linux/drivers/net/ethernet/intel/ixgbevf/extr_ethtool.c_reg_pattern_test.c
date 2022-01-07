
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_4__ {int hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; } ;


 size_t ARRAY_SIZE (size_t*) ;
 scalar_t__ IXGBE_REMOVED (int ) ;
 int hw_dbg (TYPE_1__*,char*,int,size_t,size_t) ;
 int ixgbe_write_reg (TYPE_1__*,int,size_t) ;
 size_t ixgbevf_read_reg (TYPE_1__*,int) ;
 size_t* register_test_patterns ;

__attribute__((used)) static bool reg_pattern_test(struct ixgbevf_adapter *adapter, u64 *data,
        int reg, u32 mask, u32 write)
{
 u32 pat, val, before;

 if (IXGBE_REMOVED(adapter->hw.hw_addr)) {
  *data = 1;
  return 1;
 }
 for (pat = 0; pat < ARRAY_SIZE(register_test_patterns); pat++) {
  before = ixgbevf_read_reg(&adapter->hw, reg);
  ixgbe_write_reg(&adapter->hw, reg,
    register_test_patterns[pat] & write);
  val = ixgbevf_read_reg(&adapter->hw, reg);
  if (val != (register_test_patterns[pat] & write & mask)) {
   hw_dbg(&adapter->hw,
          "pattern test reg %04X failed: got 0x%08X expected 0x%08X\n",
          reg, val,
          register_test_patterns[pat] & write & mask);
   *data = reg;
   ixgbe_write_reg(&adapter->hw, reg, before);
   return 1;
  }
  ixgbe_write_reg(&adapter->hw, reg, before);
 }
 return 0;
}
