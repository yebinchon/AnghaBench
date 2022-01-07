
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct igb_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; scalar_t__ reg_offset; int write; int mask; } ;
struct TYPE_3__ {int type; } ;
struct e1000_hw {scalar_t__ hw_addr; TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int E1000_STATUS ;

 int REG_PATTERN_TEST (scalar_t__,int ,int ) ;
 int REG_SET_AND_CHECK (scalar_t__,int ,int ) ;





 int dev_err (int *,char*,scalar_t__,scalar_t__) ;






 scalar_t__ rd32 (int ) ;
 struct igb_reg_test* reg_test_82575 ;
 struct igb_reg_test* reg_test_82576 ;
 struct igb_reg_test* reg_test_82580 ;
 struct igb_reg_test* reg_test_i210 ;
 struct igb_reg_test* reg_test_i350 ;
 int wr32 (int ,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int igb_reg_test(struct igb_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 struct igb_reg_test *test;
 u32 value, before, after;
 u32 i, toggle;

 switch (adapter->hw.mac.type) {
 case 129:
 case 128:
  test = reg_test_i350;
  toggle = 0x7FEFF3FF;
  break;
 case 131:
 case 130:
  test = reg_test_i210;
  toggle = 0x7FEFF3FF;
  break;
 case 132:
  test = reg_test_82580;
  toggle = 0x7FEFF3FF;
  break;
 case 133:
  test = reg_test_82576;
  toggle = 0x7FFFF3FF;
  break;
 default:
  test = reg_test_82575;
  toggle = 0x7FFFF3FF;
  break;
 }






 before = rd32(E1000_STATUS);
 value = (rd32(E1000_STATUS) & toggle);
 wr32(E1000_STATUS, toggle);
 after = rd32(E1000_STATUS) & toggle;
 if (value != after) {
  dev_err(&adapter->pdev->dev,
   "failed STATUS register test got: 0x%08X expected: 0x%08X\n",
   after, value);
  *data = 1;
  return 1;
 }

 wr32(E1000_STATUS, before);




 while (test->reg) {
  for (i = 0; i < test->array_len; i++) {
   switch (test->test_type) {
   case 139:
    REG_PATTERN_TEST(test->reg +
      (i * test->reg_offset),
      test->mask,
      test->write);
    break;
   case 138:
    REG_SET_AND_CHECK(test->reg +
      (i * test->reg_offset),
      test->mask,
      test->write);
    break;
   case 134:
    writel(test->write,
        (adapter->hw.hw_addr + test->reg)
     + (i * test->reg_offset));
    break;
   case 137:
    REG_PATTERN_TEST(test->reg + (i * 4),
      test->mask,
      test->write);
    break;
   case 135:
    REG_PATTERN_TEST(test->reg + (i * 8),
      test->mask,
      test->write);
    break;
   case 136:
    REG_PATTERN_TEST((test->reg + 4) + (i * 8),
      test->mask,
      test->write);
    break;
   }
  }
  test++;
 }

 *data = 0;
 return 0;
}
