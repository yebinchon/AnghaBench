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
struct mmc_data {int flags; int blocks; } ;
struct mmc_command {int opcode; int arg; } ;
struct au1xmmc_host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_WRITE ; 
#define  MMC_RSP_NONE 132 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int SD_CMD_CI_SHIFT ; 
 int SD_CMD_CT_1 ; 
 int SD_CMD_CT_2 ; 
 int SD_CMD_CT_3 ; 
 int SD_CMD_CT_4 ; 
 int SD_CMD_GO ; 
 int SD_CMD_RT_1 ; 
 int SD_CMD_RT_1B ; 
 int SD_CMD_RT_2 ; 
 int SD_CMD_RT_3 ; 
 int /*<<< orphan*/  SD_CONFIG_CR ; 
 int SD_STATUS_CR ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct au1xmmc_host *host, int wait,
				struct mmc_command *cmd, struct mmc_data *data)
{
	u32 mmccmd = (cmd->opcode << SD_CMD_CI_SHIFT);

	switch (FUNC7(cmd)) {
	case MMC_RSP_NONE:
		break;
	case MMC_RSP_R1:
		mmccmd |= SD_CMD_RT_1;
		break;
	case MMC_RSP_R1B:
		mmccmd |= SD_CMD_RT_1B;
		break;
	case MMC_RSP_R2:
		mmccmd |= SD_CMD_RT_2;
		break;
	case MMC_RSP_R3:
		mmccmd |= SD_CMD_RT_3;
		break;
	default:
		FUNC8("au1xmmc: unhandled response type %02x\n",
			FUNC7(cmd));
		return -EINVAL;
	}

	if (data) {
		if (data->flags & MMC_DATA_READ) {
			if (data->blocks > 1)
				mmccmd |= SD_CMD_CT_4;
			else
				mmccmd |= SD_CMD_CT_2;
		} else if (data->flags & MMC_DATA_WRITE) {
			if (data->blocks > 1)
				mmccmd |= SD_CMD_CT_3;
			else
				mmccmd |= SD_CMD_CT_1;
		}
	}

	FUNC6(cmd->arg, FUNC1(host));
	FUNC9(); /* drain writebuffer */

	if (wait)
		FUNC3(host, SD_CONFIG_CR);

	FUNC6((mmccmd | SD_CMD_GO), FUNC0(host));
	FUNC9(); /* drain writebuffer */

	/* Wait for the command to go on the line */
	while (FUNC5(FUNC0(host)) & SD_CMD_GO)
		/* nop */;

	/* Wait for the command to come back */
	if (wait) {
		u32 status = FUNC5(FUNC2(host));

		while (!(status & SD_STATUS_CR))
			status = FUNC5(FUNC2(host));

		/* Clear the CR status */
		FUNC6(SD_STATUS_CR, FUNC2(host));

		FUNC4(host, SD_CONFIG_CR);
	}

	return 0;
}