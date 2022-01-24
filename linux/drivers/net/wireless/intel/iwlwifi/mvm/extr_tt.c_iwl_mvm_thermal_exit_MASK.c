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
struct TYPE_2__ {int /*<<< orphan*/  ct_kill_exit; } ;
struct iwl_mvm {int init_status; TYPE_1__ thermal_throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 

void FUNC4(struct iwl_mvm *mvm)
{
	if (!(mvm->init_status & IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE))
		return;

	FUNC1(&mvm->thermal_throttle.ct_kill_exit);
	FUNC0(mvm, "Exit Thermal Throttling\n");

#ifdef CONFIG_THERMAL
	iwl_mvm_cooling_device_unregister(mvm);
	iwl_mvm_thermal_zone_unregister(mvm);
#endif
	mvm->init_status &= ~IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE;
}