
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_aqc_remove_macvlan_element_data {int flags; scalar_t__ vlan_tag; int mac_addr; } ;
typedef int i40e_status ;
typedef int element ;


 int I40E_AQC_MACVLAN_DEL_PERFECT_MATCH ;
 int ether_addr_copy (int ,int const*) ;
 int i40e_aq_remove_macvlan (struct i40e_hw*,int ,struct i40e_aqc_remove_macvlan_element_data*,int,int *) ;
 int memset (struct i40e_aqc_remove_macvlan_element_data*,int ,int) ;

__attribute__((used)) static i40e_status i40e_del_macvlan_filter(struct i40e_hw *hw, u16 seid,
        const u8 *macaddr, int *aq_err)
{
 struct i40e_aqc_remove_macvlan_element_data element;
 i40e_status status;

 memset(&element, 0, sizeof(element));
 ether_addr_copy(element.mac_addr, macaddr);
 element.vlan_tag = 0;
 element.flags = I40E_AQC_MACVLAN_DEL_PERFECT_MATCH;
 status = i40e_aq_remove_macvlan(hw, seid, &element, 1, ((void*)0));
 *aq_err = hw->aq.asq_last_status;

 return status;
}
