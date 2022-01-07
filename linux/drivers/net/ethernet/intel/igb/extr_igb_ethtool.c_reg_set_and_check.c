
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int,int,int) ;
 int rd32 (int) ;
 int wr32 (int,int) ;

__attribute__((used)) static bool reg_set_and_check(struct igb_adapter *adapter, u64 *data,
         int reg, u32 mask, u32 write)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 val;

 wr32(reg, write & mask);
 val = rd32(reg);
 if ((write & mask) != (val & mask)) {
  dev_err(&adapter->pdev->dev,
   "set/check reg %04X test failed: got 0x%08X expected 0x%08X\n",
   reg, (val & mask), (write & mask));
  *data = reg;
  return 1;
 }

 return 0;
}
