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
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_ext_dts_measurement_cmd {int /*<<< orphan*/  control_mode; int /*<<< orphan*/  flags; } ;
struct iwl_dts_measurement_cmd {int /*<<< orphan*/  control_mode; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  extcmd ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DTS_MEASUREMENT_TRIGGER_WIDE ; 
 int /*<<< orphan*/  DTS_AUTOMATIC ; 
 int /*<<< orphan*/  DTS_TRIGGER_CMD_FLAGS_TEMP ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE ; 
 int /*<<< orphan*/  PHY_OPS_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_ext_dts_measurement_cmd*) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm)
{
	struct iwl_dts_measurement_cmd cmd = {
		.flags = FUNC0(DTS_TRIGGER_CMD_FLAGS_TEMP),
	};
	struct iwl_ext_dts_measurement_cmd extcmd = {
		.control_mode = FUNC0(DTS_AUTOMATIC),
	};
	u32 cmdid;

	cmdid = FUNC2(CMD_DTS_MEASUREMENT_TRIGGER_WIDE,
			   PHY_OPS_GROUP, 0);

	if (!FUNC1(&mvm->fw->ucode_capa,
			 IWL_UCODE_TLV_CAPA_EXTENDED_DTS_MEASURE))
		return FUNC3(mvm, cmdid, 0, sizeof(cmd), &cmd);

	return FUNC3(mvm, cmdid, 0, sizeof(extcmd), &extcmd);
}