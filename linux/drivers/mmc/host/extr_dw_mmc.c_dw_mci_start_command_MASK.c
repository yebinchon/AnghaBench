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
typedef  int u32 ;
struct mmc_command {int arg; } ;
struct dw_mci {int /*<<< orphan*/  dev; struct mmc_command* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CMDARG ; 
 int SDMMC_CMD_RESP_EXP ; 
 int SDMMC_CMD_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct dw_mci *host,
				 struct mmc_command *cmd, u32 cmd_flags)
{
	host->cmd = cmd;
	FUNC0(host->dev,
		 "start command: ARGR=0x%08x CMDR=0x%08x\n",
		 cmd->arg, cmd_flags);

	FUNC3(host, CMDARG, cmd->arg);
	FUNC4(); /* drain writebuffer */
	FUNC2(host, cmd_flags);

	FUNC3(host, CMD, cmd_flags | SDMMC_CMD_START);

	/* response expected command only */
	if (cmd_flags & SDMMC_CMD_RESP_EXP)
		FUNC1(host);
}