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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_get_version {int /*<<< orphan*/  api_minor; int /*<<< orphan*/  api_major; int /*<<< orphan*/  fw_build; int /*<<< orphan*/  fw_minor; int /*<<< orphan*/  fw_major; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  i40e_aqc_opc_get_version ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

i40e_status FUNC4(struct i40e_hw *hw,
				u16 *fw_major_version, u16 *fw_minor_version,
				u32 *fw_build,
				u16 *api_major_version, u16 *api_minor_version,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_get_version *resp =
		(struct i40e_aqc_get_version *)&desc.params.raw;
	i40e_status status;

	FUNC1(&desc, i40e_aqc_opc_get_version);

	status = FUNC0(hw, &desc, NULL, 0, cmd_details);

	if (!status) {
		if (fw_major_version)
			*fw_major_version = FUNC2(resp->fw_major);
		if (fw_minor_version)
			*fw_minor_version = FUNC2(resp->fw_minor);
		if (fw_build)
			*fw_build = FUNC3(resp->fw_build);
		if (api_major_version)
			*api_major_version = FUNC2(resp->api_major);
		if (api_minor_version)
			*api_minor_version = FUNC2(resp->api_minor);
	}

	return status;
}