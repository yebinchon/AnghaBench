
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct e1000_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int dev; } ;


 int BIT (int ) ;
 int NVM_INIT_CONTROL2_REG ;
 int dev_warn (int *,char*) ;
 scalar_t__ e1000_82573 ;
 int e1000_read_nvm (struct e1000_hw*,int ,int,int*) ;
 int le16_to_cpus (int*) ;

__attribute__((used)) static void e1000_eeprom_checks(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 int ret_val;
 u16 buf = 0;

 if (hw->mac.type != e1000_82573)
  return;

 ret_val = e1000_read_nvm(hw, NVM_INIT_CONTROL2_REG, 1, &buf);
 le16_to_cpus(&buf);
 if (!ret_val && (!(buf & BIT(0)))) {

  dev_warn(&adapter->pdev->dev,
    "Warning: detected DSPD enabled in EEPROM\n");
 }
}
