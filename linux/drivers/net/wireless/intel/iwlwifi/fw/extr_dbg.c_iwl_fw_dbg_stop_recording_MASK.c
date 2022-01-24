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
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_fw_dbg_params {void* out_ctrl; void* in_sample; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGC_IN_SAMPLE ; 
 int /*<<< orphan*/  DBGC_OUT_CTRL ; 
 scalar_t__ IWL_DEVICE_FAMILY_7000 ; 
 int /*<<< orphan*/  MON_BUFF_SAMPLE_CTL ; 
 void* FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct iwl_trans *trans,
				      struct iwl_fw_dbg_params *params)
{
	if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {
		FUNC1(trans, MON_BUFF_SAMPLE_CTL, 0x100);
		return;
	}

	if (params) {
		params->in_sample = FUNC0(trans, DBGC_IN_SAMPLE);
		params->out_ctrl = FUNC0(trans, DBGC_OUT_CTRL);
	}

	FUNC2(trans, DBGC_IN_SAMPLE, 0);
	/* wait for the DBGC to finish writing the internal buffer to DRAM to
	 * avoid halting the HW while writing
	 */
	FUNC3(700, 1000);
	FUNC2(trans, DBGC_OUT_CTRL, 0);
}