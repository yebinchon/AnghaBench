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
struct iwl_mvm {int /*<<< orphan*/  fwrt; TYPE_2__* trans; } ;
struct TYPE_3__ {scalar_t__* lmac_error_event_table; } ;
struct TYPE_4__ {TYPE_1__ dbg; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct iwl_mvm *mvm)
{
	if (!FUNC4(STATUS_DEVICE_ENABLED, &mvm->trans->status)) {
		FUNC0(mvm,
			"DEVICE_ENABLED bit is not set. Aborting dump.\n");
		return;
	}

	FUNC2(mvm, 0);

	if (mvm->trans->dbg.lmac_error_event_table[1])
		FUNC2(mvm, 1);

	FUNC3(mvm);

	FUNC1(&mvm->fwrt);
}