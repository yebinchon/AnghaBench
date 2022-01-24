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
struct TYPE_2__ {int /*<<< orphan*/  tx_backoff; int /*<<< orphan*/  min_backoff; } ;
struct iwl_mvm {TYPE_1__ thermal_throttle; } ;
struct iwl_host_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  REPLY_THERMAL_MNG_BACKOFF ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct iwl_mvm *mvm, u32 backoff)
{
	struct iwl_host_cmd cmd = {
		.id = REPLY_THERMAL_MNG_BACKOFF,
		.len = sizeof(u32), 
		.data = backoff, 
	};

	backoff = FUNC3(backoff, mvm->thermal_throttle.min_backoff);

	if (FUNC2(mvm, &cmd) == 0) {
		FUNC0(mvm, "Set Thermal Tx backoff to: %u\n",
			       backoff);
		mvm->thermal_throttle.tx_backoff = backoff;
	} else {
		FUNC1(mvm, "Failed to change Thermal Tx backoff\n");
	}
}