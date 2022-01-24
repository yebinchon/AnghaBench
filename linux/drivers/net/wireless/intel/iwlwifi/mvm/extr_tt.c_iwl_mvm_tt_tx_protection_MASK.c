#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_mvm_sta {int tt_tx_protection; } ;
struct iwl_mvm {int /*<<< orphan*/  fw_id_to_mac_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,char*) ; 
 struct iwl_mvm_sta* FUNC3 (struct iwl_mvm*,int) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm, bool enable)
{
	struct iwl_mvm_sta *mvmsta;
	int i, err;

	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		mvmsta = FUNC3(mvm, i);
		if (!mvmsta)
			continue;

		if (enable == mvmsta->tt_tx_protection)
			continue;
		err = FUNC4(mvm, mvmsta, enable);
		if (err) {
			FUNC2(mvm, "Failed to %s Tx protection\n",
				enable ? "enable" : "disable");
		} else {
			FUNC1(mvm, "%s Tx protection\n",
				       enable ? "Enable" : "Disable");
			mvmsta->tt_tx_protection = enable;
		}
	}
}