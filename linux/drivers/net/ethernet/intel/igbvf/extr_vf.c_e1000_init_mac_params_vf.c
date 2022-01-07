
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_vfta; int set_uc_addr; int read_mac_addr; int rar_set; int update_mc_addr_list; int get_link_up_info; int check_for_link; int init_hw; int reset_hw; } ;
struct e1000_mac_info {int mta_reg_count; int rar_entry_count; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int e1000_check_for_link_vf ;
 int e1000_get_link_up_info_vf ;
 int e1000_init_hw_vf ;
 int e1000_rar_set_vf ;
 int e1000_read_mac_addr_vf ;
 int e1000_reset_hw_vf ;
 int e1000_set_uc_addr_vf ;
 int e1000_set_vfta_vf ;
 int e1000_update_mc_addr_list_vf ;

__attribute__((used)) static s32 e1000_init_mac_params_vf(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;


 mac->mta_reg_count = 128;

 mac->rar_entry_count = 1;



 mac->ops.reset_hw = e1000_reset_hw_vf;

 mac->ops.init_hw = e1000_init_hw_vf;

 mac->ops.check_for_link = e1000_check_for_link_vf;

 mac->ops.get_link_up_info = e1000_get_link_up_info_vf;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_vf;

 mac->ops.rar_set = e1000_rar_set_vf;

 mac->ops.read_mac_addr = e1000_read_mac_addr_vf;

 mac->ops.set_uc_addr = e1000_set_uc_addr_vf;

 mac->ops.set_vfta = e1000_set_vfta_vf;

 return E1000_SUCCESS;
}
