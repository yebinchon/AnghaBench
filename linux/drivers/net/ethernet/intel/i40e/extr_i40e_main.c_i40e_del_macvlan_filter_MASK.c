#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_aqc_remove_macvlan_element_data {int /*<<< orphan*/  flags; scalar_t__ vlan_tag; int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  i40e_status ;
typedef  int /*<<< orphan*/  element ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQC_MACVLAN_DEL_PERFECT_MATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_remove_macvlan_element_data*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aqc_remove_macvlan_element_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static i40e_status FUNC3(struct i40e_hw *hw, u16 seid,
					   const u8 *macaddr, int *aq_err)
{
	struct i40e_aqc_remove_macvlan_element_data element;
	i40e_status status;

	FUNC2(&element, 0, sizeof(element));
	FUNC0(element.mac_addr, macaddr);
	element.vlan_tag = 0;
	element.flags = I40E_AQC_MACVLAN_DEL_PERFECT_MATCH;
	status = FUNC1(hw, seid, &element, 1, NULL);
	*aq_err = hw->aq.asq_last_status;

	return status;
}