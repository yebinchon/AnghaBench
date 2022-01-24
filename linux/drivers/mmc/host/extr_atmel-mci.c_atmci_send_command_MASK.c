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
struct mmc_command {int /*<<< orphan*/  arg; } ;
struct atmel_mci {TYPE_1__* pdev; struct mmc_command* cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMCI_ARGR ; 
 int /*<<< orphan*/  ATMCI_CMDR ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct atmel_mci *host,
		struct mmc_command *cmd, u32 cmd_flags)
{
	FUNC0(host->cmd);
	host->cmd = cmd;

	FUNC2(&host->pdev->dev,
			"start command: ARGR=0x%08x CMDR=0x%08x\n",
			cmd->arg, cmd_flags);

	FUNC1(host, ATMCI_ARGR, cmd->arg);
	FUNC1(host, ATMCI_CMDR, cmd_flags);
}