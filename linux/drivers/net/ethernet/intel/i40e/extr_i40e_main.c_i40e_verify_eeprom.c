
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int state; TYPE_1__* pdev; int hw; } ;
struct TYPE_2__ {int dev; } ;


 int __I40E_BAD_EEPROM ;
 int clear_bit (int ,int ) ;
 int dev_info (int *,char*,...) ;
 int i40e_diag_eeprom_test (int *) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_verify_eeprom(struct i40e_pf *pf)
{
 int err;

 err = i40e_diag_eeprom_test(&pf->hw);
 if (err) {

  err = i40e_diag_eeprom_test(&pf->hw);
  if (err) {
   dev_info(&pf->pdev->dev, "eeprom check failed (%d), Tx/Rx traffic disabled\n",
     err);
   set_bit(__I40E_BAD_EEPROM, pf->state);
  }
 }

 if (!err && test_bit(__I40E_BAD_EEPROM, pf->state)) {
  dev_info(&pf->pdev->dev, "eeprom check passed, Tx/Rx traffic enabled\n");
  clear_bit(__I40E_BAD_EEPROM, pf->state);
 }
}
