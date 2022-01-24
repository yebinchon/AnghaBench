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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_rate {TYPE_1__ header; int /*<<< orphan*/  mcs_set; int /*<<< orphan*/  legacy_rates; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_SET_RATE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_set_rate*) ; 
 struct mwl8k_cmd_set_rate* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		   u32 legacy_rate_mask, u8 *mcs_rates)
{
	struct mwl8k_cmd_set_rate *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_SET_RATE);
	cmd->header.length = FUNC0(sizeof(*cmd));
	FUNC3(cmd->legacy_rates, legacy_rate_mask);
	FUNC4(cmd->mcs_set, mcs_rates, 16);

	rc = FUNC5(hw, &cmd->header);
	FUNC1(cmd);

	return rc;
}