
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ixgbe_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; scalar_t__ write; int mask; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ mac; int hw_addr; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 scalar_t__ IXGBE_STATUS ;






 int drv ;
 int e_err (int ,char*,...) ;






 scalar_t__ ixgbe_read_reg (TYPE_2__*,scalar_t__) ;
 scalar_t__ ixgbe_removed (int ) ;
 int ixgbe_write_reg (TYPE_2__*,scalar_t__,scalar_t__) ;
 int reg_pattern_test (struct ixgbe_adapter*,int*,scalar_t__,int ,scalar_t__) ;
 int reg_set_and_check (struct ixgbe_adapter*,int*,scalar_t__,int ,scalar_t__) ;
 struct ixgbe_reg_test* reg_test_82598 ;
 struct ixgbe_reg_test* reg_test_82599 ;

__attribute__((used)) static int ixgbe_reg_test(struct ixgbe_adapter *adapter, u64 *data)
{
 const struct ixgbe_reg_test *test;
 u32 value, before, after;
 u32 i, toggle;

 if (ixgbe_removed(adapter->hw.hw_addr)) {
  e_err(drv, "Adapter removed - register test blocked\n");
  *data = 1;
  return 1;
 }
 switch (adapter->hw.mac.type) {
 case 133:
  toggle = 0x7FFFF3FF;
  test = reg_test_82598;
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  toggle = 0x7FFFF30F;
  test = reg_test_82599;
  break;
 default:
  *data = 1;
  return 1;
 }







 before = ixgbe_read_reg(&adapter->hw, IXGBE_STATUS);
 value = (ixgbe_read_reg(&adapter->hw, IXGBE_STATUS) & toggle);
 ixgbe_write_reg(&adapter->hw, IXGBE_STATUS, toggle);
 after = ixgbe_read_reg(&adapter->hw, IXGBE_STATUS) & toggle;
 if (value != after) {
  e_err(drv, "failed STATUS register test got: 0x%08X expected: 0x%08X\n",
        after, value);
  *data = 1;
  return 1;
 }

 ixgbe_write_reg(&adapter->hw, IXGBE_STATUS, before);





 while (test->reg) {
  for (i = 0; i < test->array_len; i++) {
   bool b = 0;

   switch (test->test_type) {
   case 139:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 0x40),
           test->mask,
           test->write);
    break;
   case 138:
    b = reg_set_and_check(adapter, data,
            test->reg + (i * 0x40),
            test->mask,
            test->write);
    break;
   case 134:
    ixgbe_write_reg(&adapter->hw,
      test->reg + (i * 0x40),
      test->write);
    break;
   case 137:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 4),
           test->mask,
           test->write);
    break;
   case 135:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 8),
           test->mask,
           test->write);
    break;
   case 136:
    b = reg_pattern_test(adapter, data,
           (test->reg + 4) + (i * 8),
           test->mask,
           test->write);
    break;
   }
   if (b)
    return 1;
  }
  test++;
 }

 *data = 0;
 return 0;
}
