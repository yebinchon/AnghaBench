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
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_phy_debug {int /*<<< orphan*/  command_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  i40e_aqc_opc_set_phy_debug ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

i40e_status FUNC2(struct i40e_hw *hw, u8 cmd_flags,
				  struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_set_phy_debug *cmd =
		(struct i40e_aqc_set_phy_debug *)&desc.params.raw;
	i40e_status status;

	FUNC1(&desc,
					  i40e_aqc_opc_set_phy_debug);

	cmd->command_flags = cmd_flags;

	status = FUNC0(hw, &desc, NULL, 0, cmd_details);

	return status;
}