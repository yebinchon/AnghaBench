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
typedef  int u32 ;
struct mmc_command {int opcode; int flags; int arg; } ;
struct goldfish_mmc_host {scalar_t__ bus_mode; TYPE_1__* data; struct mmc_command* cmd; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct goldfish_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MMC_ARG ; 
 scalar_t__ MMC_BUSMODE_OPENDRAIN ; 
 int /*<<< orphan*/  MMC_CMD ; 
 scalar_t__ MMC_CMD_ADTC ; 
 scalar_t__ MMC_CMD_BC ; 
 scalar_t__ MMC_CMD_BCR ; 
 int MMC_DATA_WRITE ; 
 int MMC_RSP_BUSY ; 
#define  MMC_RSP_NONE 132 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int OMAP_MMC_CMDTYPE_AC ; 
 int OMAP_MMC_CMDTYPE_ADTC ; 
 int OMAP_MMC_CMDTYPE_BC ; 
 int OMAP_MMC_CMDTYPE_BCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct goldfish_mmc_host*) ; 
 int FUNC5 (struct mmc_command*) ; 

__attribute__((used)) static void
FUNC6(struct goldfish_mmc_host *host, struct mmc_command *cmd)
{
	u32 cmdreg;
	u32 resptype;
	u32 cmdtype;

	host->cmd = cmd;

	resptype = 0;
	cmdtype = 0;

	/* Our hardware needs to know exact type */
	switch (FUNC5(cmd)) {
	case MMC_RSP_NONE:
		break;
	case MMC_RSP_R1:
	case MMC_RSP_R1B:
		/* resp 1, 1b, 6, 7 */
		resptype = 1;
		break;
	case MMC_RSP_R2:
		resptype = 2;
		break;
	case MMC_RSP_R3:
		resptype = 3;
		break;
	default:
		FUNC1(FUNC3(FUNC4(host)),
			"Invalid response type: %04x\n", FUNC5(cmd));
		break;
	}

	if (FUNC2(cmd) == MMC_CMD_ADTC)
		cmdtype = OMAP_MMC_CMDTYPE_ADTC;
	else if (FUNC2(cmd) == MMC_CMD_BC)
		cmdtype = OMAP_MMC_CMDTYPE_BC;
	else if (FUNC2(cmd) == MMC_CMD_BCR)
		cmdtype = OMAP_MMC_CMDTYPE_BCR;
	else
		cmdtype = OMAP_MMC_CMDTYPE_AC;

	cmdreg = cmd->opcode | (resptype << 8) | (cmdtype << 12);

	if (host->bus_mode == MMC_BUSMODE_OPENDRAIN)
		cmdreg |= 1 << 6;

	if (cmd->flags & MMC_RSP_BUSY)
		cmdreg |= 1 << 11;

	if (host->data && !(host->data->flags & MMC_DATA_WRITE))
		cmdreg |= 1 << 15;

	FUNC0(host, MMC_ARG, cmd->arg);
	FUNC0(host, MMC_CMD, cmdreg);
}