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
typedef  int /*<<< orphan*/  tx_ant_cmd ;
struct iwl_tx_ant_cfg_cmd {int /*<<< orphan*/  valid; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_ANT_CONFIGURATION_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tx_ant_cfg_cmd*) ; 

__attribute__((used)) static int FUNC3(struct iwl_mvm *mvm, u8 valid_tx_ant)
{
	struct iwl_tx_ant_cfg_cmd tx_ant_cmd = {
		.valid = FUNC1(valid_tx_ant),
	};

	FUNC0(mvm, "select valid tx ant: %u\n", valid_tx_ant);
	return FUNC2(mvm, TX_ANT_CONFIGURATION_CMD, 0,
				    sizeof(tx_ant_cmd), &tx_ant_cmd);
}