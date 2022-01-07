
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_impl_if {int module_eeprom; int module_info; int kr_training_post; int kr_training_pre; int an_post; int an_pre; int an_outcome; int an_advertising; int an_config; int an_mode; int cur_mode; int switch_mode; int get_mode; int set_mode; int use_mode; int valid_speed; int link_status; int stop; int start; int reset; int exit; int init; } ;
struct xgbe_phy_if {struct xgbe_phy_impl_if phy_impl; } ;


 int xgbe_phy_an_advertising ;
 int xgbe_phy_an_config ;
 int xgbe_phy_an_mode ;
 int xgbe_phy_an_outcome ;
 int xgbe_phy_an_post ;
 int xgbe_phy_an_pre ;
 int xgbe_phy_cur_mode ;
 int xgbe_phy_exit ;
 int xgbe_phy_get_mode ;
 int xgbe_phy_init ;
 int xgbe_phy_kr_training_post ;
 int xgbe_phy_kr_training_pre ;
 int xgbe_phy_link_status ;
 int xgbe_phy_module_eeprom ;
 int xgbe_phy_module_info ;
 int xgbe_phy_reset ;
 int xgbe_phy_set_mode ;
 int xgbe_phy_start ;
 int xgbe_phy_stop ;
 int xgbe_phy_switch_mode ;
 int xgbe_phy_use_mode ;
 int xgbe_phy_valid_speed ;

void xgbe_init_function_ptrs_phy_v2(struct xgbe_phy_if *phy_if)
{
 struct xgbe_phy_impl_if *phy_impl = &phy_if->phy_impl;

 phy_impl->init = xgbe_phy_init;
 phy_impl->exit = xgbe_phy_exit;

 phy_impl->reset = xgbe_phy_reset;
 phy_impl->start = xgbe_phy_start;
 phy_impl->stop = xgbe_phy_stop;

 phy_impl->link_status = xgbe_phy_link_status;

 phy_impl->valid_speed = xgbe_phy_valid_speed;

 phy_impl->use_mode = xgbe_phy_use_mode;
 phy_impl->set_mode = xgbe_phy_set_mode;
 phy_impl->get_mode = xgbe_phy_get_mode;
 phy_impl->switch_mode = xgbe_phy_switch_mode;
 phy_impl->cur_mode = xgbe_phy_cur_mode;

 phy_impl->an_mode = xgbe_phy_an_mode;

 phy_impl->an_config = xgbe_phy_an_config;

 phy_impl->an_advertising = xgbe_phy_an_advertising;

 phy_impl->an_outcome = xgbe_phy_an_outcome;

 phy_impl->an_pre = xgbe_phy_an_pre;
 phy_impl->an_post = xgbe_phy_an_post;

 phy_impl->kr_training_pre = xgbe_phy_kr_training_pre;
 phy_impl->kr_training_post = xgbe_phy_kr_training_post;

 phy_impl->module_info = xgbe_phy_module_info;
 phy_impl->module_eeprom = xgbe_phy_module_eeprom;
}
