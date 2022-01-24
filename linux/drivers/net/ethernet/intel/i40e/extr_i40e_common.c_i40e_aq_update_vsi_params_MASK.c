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
struct i40e_vsi_context {void* vsis_unallocated; void* vsis_allocated; int /*<<< orphan*/  info; int /*<<< orphan*/  seid; } ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_get_update_vsi_completion {int /*<<< orphan*/  vsi_free; int /*<<< orphan*/  vsi_used; } ;
struct i40e_aqc_add_get_update_vsi {int /*<<< orphan*/  uplink_seid; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int I40E_AQ_FLAG_BUF ; 
 int I40E_AQ_FLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_update_vsi_parameters ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

i40e_status FUNC4(struct i40e_hw *hw,
				struct i40e_vsi_context *vsi_ctx,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_add_get_update_vsi *cmd =
		(struct i40e_aqc_add_get_update_vsi *)&desc.params.raw;
	struct i40e_aqc_add_get_update_vsi_completion *resp =
		(struct i40e_aqc_add_get_update_vsi_completion *)
		&desc.params.raw;
	i40e_status status;

	FUNC2(&desc,
					  i40e_aqc_opc_update_vsi_parameters);
	cmd->uplink_seid = FUNC0(vsi_ctx->seid);

	desc.flags |= FUNC0((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));

	status = FUNC1(hw, &desc, &vsi_ctx->info,
				    sizeof(vsi_ctx->info), cmd_details);

	vsi_ctx->vsis_allocated = FUNC3(resp->vsi_used);
	vsi_ctx->vsis_unallocated = FUNC3(resp->vsi_free);

	return status;
}