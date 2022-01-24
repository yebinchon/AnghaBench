#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* fw_mon; } ;
struct iwl_trans {TYPE_3__ dbg; TYPE_1__* trans_cfg; } ;
struct fw_img {scalar_t__ is_dual_cpus; } ;
struct TYPE_8__ {scalar_t__ fw_monitor; } ;
struct TYPE_6__ {int size; int physical; } ;
struct TYPE_5__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_7000 ; 
 int LMPM_SECURE_CPU2_HDR_MEM_SPACE ; 
 int /*<<< orphan*/  LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR ; 
 int /*<<< orphan*/  MON_BUFF_BASE_ADDR ; 
 int /*<<< orphan*/  MON_BUFF_END_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 scalar_t__ FUNC4 (struct iwl_trans*) ; 
 int FUNC5 (struct iwl_trans*,struct fw_img const*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ iwlwifi_mod_params ; 

__attribute__((used)) static int FUNC8(struct iwl_trans *trans,
				const struct fw_img *image)
{
	int ret = 0;
	int first_ucode_section;

	FUNC0(trans, "working with %s CPU\n",
		     image->is_dual_cpus ? "Dual" : "Single");

	/* load to FW the binary non secured sections of CPU1 */
	ret = FUNC5(trans, image, 1, &first_ucode_section);
	if (ret)
		return ret;

	if (image->is_dual_cpus) {
		/* set CPU2 header address */
		FUNC7(trans,
			       LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR,
			       LMPM_SECURE_CPU2_HDR_MEM_SPACE);

		/* load to FW the binary sections of CPU2 */
		ret = FUNC5(trans, image, 2,
						 &first_ucode_section);
		if (ret)
			return ret;
	}

	/* supported for 7000 only for the moment */
	if (iwlwifi_mod_params.fw_monitor &&
	    trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {
		FUNC2(trans, 0);

		if (trans->dbg.fw_mon[0].size) {
			FUNC7(trans, MON_BUFF_BASE_ADDR,
				       trans->dbg.fw_mon[0].physical >> 4);
			FUNC7(trans, MON_BUFF_END_ADDR,
				       (trans->dbg.fw_mon[0].physical +
					trans->dbg.fw_mon[0].size) >> 4);
		}
	} else if (FUNC4(trans)) {
		FUNC3(trans);
	}

	FUNC1(trans);

	/* release CPU reset */
	FUNC6(trans, CSR_RESET, 0);

	return 0;
}