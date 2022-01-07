
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ixgbevf_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; int write; int mask; } ;
struct TYPE_4__ {int hw_addr; } ;
struct ixgbevf_adapter {TYPE_2__ hw; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IXGBE_REMOVED (int ) ;






 int dev_err (int *,char*) ;
 int ixgbe_write_reg (TYPE_2__*,scalar_t__,int ) ;
 int reg_pattern_test (struct ixgbevf_adapter*,int*,scalar_t__,int ,int ) ;
 int reg_set_and_check (struct ixgbevf_adapter*,int*,scalar_t__,int ,int ) ;
 struct ixgbevf_reg_test* reg_test_vf ;

__attribute__((used)) static int ixgbevf_reg_test(struct ixgbevf_adapter *adapter, u64 *data)
{
 const struct ixgbevf_reg_test *test;
 u32 i;

 if (IXGBE_REMOVED(adapter->hw.hw_addr)) {
  dev_err(&adapter->pdev->dev,
   "Adapter removed - register test blocked\n");
  *data = 1;
  return 1;
 }
 test = reg_test_vf;




 while (test->reg) {
  for (i = 0; i < test->array_len; i++) {
   bool b = 0;

   switch (test->test_type) {
   case 133:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 0x40),
           test->mask,
           test->write);
    break;
   case 132:
    b = reg_set_and_check(adapter, data,
            test->reg + (i * 0x40),
            test->mask,
            test->write);
    break;
   case 128:
    ixgbe_write_reg(&adapter->hw,
      test->reg + (i * 0x40),
      test->write);
    break;
   case 131:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 4),
           test->mask,
           test->write);
    break;
   case 129:
    b = reg_pattern_test(adapter, data,
           test->reg + (i * 8),
           test->mask,
           test->write);
    break;
   case 130:
    b = reg_pattern_test(adapter, data,
           test->reg + 4 + (i * 8),
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
 return *data;
}
