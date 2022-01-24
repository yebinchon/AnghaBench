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
struct iwl_mvm_tt_mgmt {int throttle; int dynamic_smps; int /*<<< orphan*/  ct_kill_exit; int /*<<< orphan*/  min_backoff; int /*<<< orphan*/  params; } ;
struct iwl_mvm {int /*<<< orphan*/  init_status; TYPE_1__* cfg; struct iwl_mvm_tt_mgmt thermal_throttle; } ;
struct TYPE_2__ {int /*<<< orphan*/ * thermal_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE ; 
 int /*<<< orphan*/  check_exit_ctkill ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  iwl_mvm_default_tt_params ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 

void FUNC4(struct iwl_mvm *mvm, u32 min_backoff)
{
	struct iwl_mvm_tt_mgmt *tt = &mvm->thermal_throttle;

	FUNC1(mvm, "Initialize Thermal Throttling\n");

	if (mvm->cfg->thermal_params)
		tt->params = *mvm->cfg->thermal_params;
	else
		tt->params = iwl_mvm_default_tt_params;

	tt->throttle = false;
	tt->dynamic_smps = false;
	tt->min_backoff = min_backoff;
	FUNC0(&tt->ct_kill_exit, check_exit_ctkill);

#ifdef CONFIG_THERMAL
	iwl_mvm_cooling_device_register(mvm);
	iwl_mvm_thermal_zone_register(mvm);
#endif
	mvm->init_status |= IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE;
}