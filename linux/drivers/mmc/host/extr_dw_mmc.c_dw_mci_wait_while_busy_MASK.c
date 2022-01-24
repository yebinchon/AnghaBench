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
struct dw_mci {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int SDMMC_CMD_PRV_DAT_WAIT ; 
 int SDMMC_CMD_VOLT_SWITCH ; 
 scalar_t__ SDMMC_STATUS ; 
 int SDMMC_STATUS_BUSY ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct dw_mci *host, u32 cmd_flags)
{
	u32 status;

	/*
	 * Databook says that before issuing a new data transfer command
	 * we need to check to see if the card is busy.  Data transfer commands
	 * all have SDMMC_CMD_PRV_DAT_WAIT set, so we'll key off that.
	 *
	 * ...also allow sending for SDMMC_CMD_VOLT_SWITCH where busy is
	 * expected.
	 */
	if ((cmd_flags & SDMMC_CMD_PRV_DAT_WAIT) &&
	    !(cmd_flags & SDMMC_CMD_VOLT_SWITCH)) {
		if (FUNC1(host->regs + SDMMC_STATUS,
					      status,
					      !(status & SDMMC_STATUS_BUSY),
					      10, 500 * USEC_PER_MSEC))
			FUNC0(host->dev, "Busy; trying anyway\n");
	}
}