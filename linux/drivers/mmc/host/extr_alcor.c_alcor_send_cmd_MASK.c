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
typedef  int u8 ;
struct mmc_command {int opcode; unsigned long arg; unsigned long busy_timeout; int /*<<< orphan*/  data; } ;
struct alcor_sdmmc_host {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout_work; struct mmc_command* cmd; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;

/* Variables and functions */
 int AU6601_CMD_17_BYTE_CRC ; 
 int AU6601_CMD_6_BYTE_CRC ; 
 int AU6601_CMD_6_BYTE_WO_CRC ; 
 int AU6601_CMD_NO_RESP ; 
 int AU6601_CMD_START_XFER ; 
 int AU6601_CMD_STOP_WAIT_RDY ; 
 int /*<<< orphan*/  AU6601_CMD_XFER_CTRL ; 
 int /*<<< orphan*/  AU6601_REG_CMD_ARG ; 
 int /*<<< orphan*/  AU6601_REG_CMD_OPCODE ; 
#define  MMC_RSP_NONE 132 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_pci_priv*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_pci_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct alcor_sdmmc_host *host,
			   struct mmc_command *cmd, bool set_timeout)
{
	struct alcor_pci_priv *priv = host->alcor_pci;
	unsigned long timeout = 0;
	u8 ctrl = 0;

	host->cmd = cmd;
	FUNC0(host, cmd);

	FUNC3(host->dev, "send CMD. opcode: 0x%02x, arg; 0x%08x\n",
		cmd->opcode, cmd->arg);
	FUNC2(priv, cmd->opcode | 0x40, AU6601_REG_CMD_OPCODE);
	FUNC1(priv, cmd->arg, AU6601_REG_CMD_ARG);

	switch (FUNC7(cmd)) {
	case MMC_RSP_NONE:
		ctrl = AU6601_CMD_NO_RESP;
		break;
	case MMC_RSP_R1:
		ctrl = AU6601_CMD_6_BYTE_CRC;
		break;
	case MMC_RSP_R1B:
		ctrl = AU6601_CMD_6_BYTE_CRC | AU6601_CMD_STOP_WAIT_RDY;
		break;
	case MMC_RSP_R2:
		ctrl = AU6601_CMD_17_BYTE_CRC;
		break;
	case MMC_RSP_R3:
		ctrl = AU6601_CMD_6_BYTE_WO_CRC;
		break;
	default:
		FUNC4(host->dev, "%s: cmd->flag (0x%02x) is not valid\n",
			FUNC6(FUNC5(host)), FUNC7(cmd));
		break;
	}

	if (set_timeout) {
		if (!cmd->data && cmd->busy_timeout)
			timeout = cmd->busy_timeout;
		else
			timeout = 10000;

		FUNC9(&host->timeout_work,
				      FUNC8(timeout));
	}

	FUNC3(host->dev, "xfer ctrl: 0x%02x; timeout: %lu\n", ctrl, timeout);
	FUNC2(priv, ctrl | AU6601_CMD_START_XFER,
				 AU6601_CMD_XFER_CTRL);
}