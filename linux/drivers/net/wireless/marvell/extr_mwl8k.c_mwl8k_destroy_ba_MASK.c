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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {void* length; void* code; } ;
struct TYPE_3__ {void* ba_context; } ;
struct mwl8k_cmd_bastream {TYPE_2__ header; TYPE_1__ destroy_params; void* action; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MWL8K_BA_DESTROY ; 
 int MWL8K_CMD_BASTREAM ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_bastream*) ; 
 struct mwl8k_cmd_bastream* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
			     u8 idx)
{
	struct mwl8k_cmd_bastream *cmd;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return;

	cmd->header.code = FUNC0(MWL8K_CMD_BASTREAM);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC1(MWL8K_BA_DESTROY);

	cmd->destroy_params.ba_context = FUNC1(idx);
	FUNC4(hw, &cmd->header);

	FUNC5(hw->wiphy, "Deleted BA stream index %d\n", idx);

	FUNC2(cmd);
}