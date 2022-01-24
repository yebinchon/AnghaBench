#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_drv {scalar_t__ fw_index; TYPE_2__* trans; int /*<<< orphan*/  firmware_name; } ;
struct iwl_cfg {scalar_t__ ucode_api_max; scalar_t__ ucode_api_min; char* fw_name_pre; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_rev; TYPE_1__* trans_cfg; struct iwl_cfg* cfg; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_drv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_DEVICE_FAMILY_9000 ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_drv*,char*,...) ; 
 scalar_t__ SILICON_B_STEP ; 
 scalar_t__ SILICON_C_STEP ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  iwl_req_fw_callback ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct iwl_drv *drv, bool first)
{
	const struct iwl_cfg *cfg = drv->trans->cfg;
	char tag[8];

	if (drv->trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_9000 &&
	    (FUNC0(drv->trans->hw_rev) != SILICON_B_STEP &&
	     FUNC0(drv->trans->hw_rev) != SILICON_C_STEP)) {
		FUNC2(drv,
			"Only HW steps B and C are currently supported (0x%0x)\n",
			drv->trans->hw_rev);
		return -EINVAL;
	}

	if (first) {
		drv->fw_index = cfg->ucode_api_max;
		FUNC5(tag, "%d", drv->fw_index);
	} else {
		drv->fw_index--;
		FUNC5(tag, "%d", drv->fw_index);
	}

	if (drv->fw_index < cfg->ucode_api_min) {
		FUNC2(drv, "no suitable firmware found!\n");

		if (cfg->ucode_api_min == cfg->ucode_api_max) {
			FUNC2(drv, "%s%d is required\n", cfg->fw_name_pre,
				cfg->ucode_api_max);
		} else {
			FUNC2(drv, "minimum version required: %s%d\n",
				cfg->fw_name_pre, cfg->ucode_api_min);
			FUNC2(drv, "maximum version supported: %s%d\n",
				cfg->fw_name_pre, cfg->ucode_api_max);
		}

		FUNC2(drv,
			"check git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git\n");
		return -ENOENT;
	}

	FUNC4(drv->firmware_name, sizeof(drv->firmware_name), "%s%s.ucode",
		 cfg->fw_name_pre, tag);

	FUNC1(drv, "attempting to load firmware '%s'\n",
			  drv->firmware_name);

	return FUNC3(THIS_MODULE, 1, drv->firmware_name,
				       drv->trans->dev,
				       GFP_KERNEL, drv, iwl_req_fw_callback);
}