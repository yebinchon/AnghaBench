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
struct iwl_fw_dbg_params {int /*<<< orphan*/  out_ctrl; int /*<<< orphan*/  in_sample; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGC_IN_SAMPLE ; 
 int /*<<< orphan*/  DBGC_OUT_CTRL ; 
 int EIO ; 
 scalar_t__ IWL_DEVICE_FAMILY_7000 ; 
 int /*<<< orphan*/  MON_BUFF_SAMPLE_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_trans *trans,
					struct iwl_fw_dbg_params *params)
{
	if (!params)
		return -EIO;

	if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {
		FUNC0(trans, MON_BUFF_SAMPLE_CTL, 0x100);
		FUNC0(trans, MON_BUFF_SAMPLE_CTL, 0x1);
		FUNC1(trans, MON_BUFF_SAMPLE_CTL, 0x1);
	} else {
		FUNC2(trans, DBGC_IN_SAMPLE, params->in_sample);
		FUNC2(trans, DBGC_OUT_CTRL, params->out_ctrl);
	}

	return 0;
}