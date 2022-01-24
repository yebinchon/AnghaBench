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
struct i40e_aqc_switch_seid {int /*<<< orphan*/  seid; } ;
struct i40e_aqc_get_switch_config_resp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_get_switch_config ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_get_switch_config_resp*,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

i40e_status FUNC4(struct i40e_hw *hw,
				struct i40e_aqc_get_switch_config_resp *buf,
				u16 buf_size, u16 *start_seid,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_switch_seid *scfg =
		(struct i40e_aqc_switch_seid *)&desc.params.raw;
	i40e_status status;

	FUNC2(&desc,
					  i40e_aqc_opc_get_switch_config);
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	if (buf_size > I40E_AQ_LARGE_BUF)
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);
	scfg->seid = FUNC0(*start_seid);

	status = FUNC1(hw, &desc, buf, buf_size, cmd_details);
	*start_seid = FUNC3(scfg->seid);

	return status;
}