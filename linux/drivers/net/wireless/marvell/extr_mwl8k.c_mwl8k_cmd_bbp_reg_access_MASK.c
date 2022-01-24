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
typedef  int u16 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_bbp_reg_access {int /*<<< orphan*/  value; TYPE_1__ header; void* offset; void* action; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_BBP_REG_ACCESS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_bbp_reg_access*) ; 
 struct mwl8k_cmd_bbp_reg_access* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_hw *hw,
			 u16 action,
			 u16 offset,
			 u8 *value)
{
	struct mwl8k_cmd_bbp_reg_access *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_BBP_REG_ACCESS);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC0(action);
	cmd->offset = FUNC0(offset);

	rc = FUNC3(hw, &cmd->header);

	if (!rc)
		*value = cmd->value;
	else
		*value = 0;

	FUNC1(cmd);

	return rc;
}