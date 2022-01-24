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
typedef  unsigned int u32 ;
struct dw_mci_slot {TYPE_1__* mmc; struct dw_mci* host; } ;
struct dw_mci {scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CMDARG ; 
 scalar_t__ SDMMC_CMD ; 
 unsigned int SDMMC_CMD_START ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct dw_mci_slot *slot, u32 cmd, u32 arg)
{
	struct dw_mci *host = slot->host;
	unsigned int cmd_status = 0;

	FUNC2(host, CMDARG, arg);
	FUNC4(); /* drain writebuffer */
	FUNC1(host, cmd);
	FUNC2(host, CMD, SDMMC_CMD_START | cmd);

	if (FUNC3(host->regs + SDMMC_CMD, cmd_status,
				      !(cmd_status & SDMMC_CMD_START),
				      1, 500 * USEC_PER_MSEC))
		FUNC0(&slot->mmc->class_dev,
			"Timeout sending command (cmd %#x arg %#x status %#x)\n",
			cmd, arg, cmd_status);
}