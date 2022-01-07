
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_aqc_add_macvlan_element_data {int flags; int match_method; scalar_t__ queue_number; scalar_t__ vlan_tag; int mac_addr; } ;
typedef int i40e_status ;


 int I40E_AQC_MACVLAN_ADD_PERFECT_MATCH ;
 int I40E_AQC_MM_ERR_NO_RES ;
 int cpu_to_le16 (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int i40e_aq_add_macvlan (struct i40e_hw*,int ,struct i40e_aqc_add_macvlan_element_data*,int,int *) ;

__attribute__((used)) static i40e_status i40e_add_macvlan_filter(struct i40e_hw *hw, u16 seid,
        const u8 *macaddr, int *aq_err)
{
 struct i40e_aqc_add_macvlan_element_data element;
 i40e_status status;
 u16 cmd_flags = 0;

 ether_addr_copy(element.mac_addr, macaddr);
 element.vlan_tag = 0;
 element.queue_number = 0;
 element.match_method = I40E_AQC_MM_ERR_NO_RES;
 cmd_flags |= I40E_AQC_MACVLAN_ADD_PERFECT_MATCH;
 element.flags = cpu_to_le16(cmd_flags);
 status = i40e_aq_add_macvlan(hw, seid, &element, 1, ((void*)0));
 *aq_err = hw->aq.asq_last_status;

 return status;
}
