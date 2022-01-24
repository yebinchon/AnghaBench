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
struct i40e_aqc_add_macvlan_element_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  match_method; scalar_t__ queue_number; scalar_t__ vlan_tag; int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQC_MACVLAN_ADD_PERFECT_MATCH ; 
 int /*<<< orphan*/  I40E_AQC_MM_ERR_NO_RES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_add_macvlan_element_data*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static i40e_status FUNC3(struct i40e_hw *hw, u16 seid,
					   const u8 *macaddr, int *aq_err)
{
	struct i40e_aqc_add_macvlan_element_data element;
	i40e_status status;
	u16 cmd_flags = 0;

	FUNC1(element.mac_addr, macaddr);
	element.vlan_tag = 0;
	element.queue_number = 0;
	element.match_method = I40E_AQC_MM_ERR_NO_RES;
	cmd_flags |= I40E_AQC_MACVLAN_ADD_PERFECT_MATCH;
	element.flags = FUNC0(cmd_flags);
	status = FUNC2(hw, seid, &element, 1, NULL);
	*aq_err = hw->aq.asq_last_status;

	return status;
}