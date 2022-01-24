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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_phy_int_mask {int /*<<< orphan*/  event_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_set_phy_int_mask ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

i40e_status FUNC3(struct i40e_hw *hw,
				     u16 mask,
				     struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_set_phy_int_mask *cmd =
		(struct i40e_aqc_set_phy_int_mask *)&desc.params.raw;
	i40e_status status;

	FUNC2(&desc,
					  i40e_aqc_opc_set_phy_int_mask);

	cmd->event_mask = FUNC0(mask);

	status = FUNC1(hw, &desc, NULL, 0, cmd_details);

	return status;
}