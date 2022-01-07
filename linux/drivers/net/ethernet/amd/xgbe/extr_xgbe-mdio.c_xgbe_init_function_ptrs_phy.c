
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_if {int module_eeprom; int module_info; int an_isr; int phy_valid_speed; int phy_config_aneg; int phy_status; int phy_stop; int phy_start; int phy_reset; int phy_exit; int phy_init; } ;


 int xgbe_an_combined_isr ;
 int xgbe_phy_config_aneg ;
 int xgbe_phy_exit ;
 int xgbe_phy_init ;
 int xgbe_phy_module_eeprom ;
 int xgbe_phy_module_info ;
 int xgbe_phy_reset ;
 int xgbe_phy_start ;
 int xgbe_phy_status ;
 int xgbe_phy_stop ;
 int xgbe_phy_valid_speed ;

void xgbe_init_function_ptrs_phy(struct xgbe_phy_if *phy_if)
{
 phy_if->phy_init = xgbe_phy_init;
 phy_if->phy_exit = xgbe_phy_exit;

 phy_if->phy_reset = xgbe_phy_reset;
 phy_if->phy_start = xgbe_phy_start;
 phy_if->phy_stop = xgbe_phy_stop;

 phy_if->phy_status = xgbe_phy_status;
 phy_if->phy_config_aneg = xgbe_phy_config_aneg;

 phy_if->phy_valid_speed = xgbe_phy_valid_speed;

 phy_if->an_isr = xgbe_an_combined_isr;

 phy_if->module_info = xgbe_phy_module_info;
 phy_if->module_eeprom = xgbe_phy_module_eeprom;
}
