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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_sta {int bt_reduced_txpower; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_bt_coex_reduced_txp_update_cmd {int /*<<< orphan*/  reduced_txp; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  BT_COEX_UPDATE_REDUCED_TXP ; 
 int /*<<< orphan*/  BT_REDUCED_TX_POWER_BIT ; 
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_bt_coex_reduced_txp_update_cmd*) ; 
 struct iwl_mvm_sta* FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm, u8 sta_id,
				       bool enable)
{
	struct iwl_bt_coex_reduced_txp_update_cmd cmd = {};
	struct iwl_mvm_sta *mvmsta;
	u32 value;

	mvmsta = FUNC3(mvm, sta_id);
	if (!mvmsta)
		return 0;

	/* nothing to do */
	if (mvmsta->bt_reduced_txpower == enable)
		return 0;

	value = mvmsta->sta_id;

	if (enable)
		value |= BT_REDUCED_TX_POWER_BIT;

	FUNC0(mvm, "%sable reduced Tx Power for sta %d\n",
		       enable ? "en" : "dis", sta_id);

	cmd.reduced_txp = FUNC1(value);
	mvmsta->bt_reduced_txpower = enable;

	return FUNC2(mvm, BT_COEX_UPDATE_REDUCED_TXP,
				    CMD_ASYNC, sizeof(cmd), &cmd);
}