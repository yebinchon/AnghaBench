#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_fw_runtime {TYPE_3__* trans; TYPE_1__* fw; } ;
struct fw_img {int /*<<< orphan*/  paging_mem_size; } ;
typedef  enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {scalar_t__ gen2; } ;
struct TYPE_4__ {struct fw_img* img; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*) ; 
 int FUNC2 (struct iwl_fw_runtime*,struct fw_img const*) ; 
 int FUNC3 (struct iwl_fw_runtime*,struct fw_img const*) ; 

int FUNC4(struct iwl_fw_runtime *fwrt, enum iwl_ucode_type type)
{
	const struct fw_img *fw = &fwrt->fw->img[type];
	int ret;

	if (fwrt->trans->trans_cfg->gen2)
		return 0;

	/*
	 * Configure and operate fw paging mechanism.
	 * The driver configures the paging flow only once.
	 * The CPU2 paging image is included in the IWL_UCODE_INIT image.
	 */
	if (!fw->paging_mem_size)
		return 0;

	ret = FUNC2(fwrt, fw);
	if (ret) {
		FUNC0(fwrt, "failed to save the FW paging image\n");
		return ret;
	}

	ret = FUNC3(fwrt, fw);
	if (ret) {
		FUNC0(fwrt, "failed to send the paging cmd\n");
		FUNC1(fwrt);
		return ret;
	}

	return 0;
}