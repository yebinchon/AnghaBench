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
struct sh_mmcif_host {int /*<<< orphan*/  addr; } ;
struct mmc_command {int flags; void** resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMCIF_CE_RESP0 ; 
 int /*<<< orphan*/  MMCIF_CE_RESP1 ; 
 int /*<<< orphan*/  MMCIF_CE_RESP2 ; 
 int /*<<< orphan*/  MMCIF_CE_RESP3 ; 
 int MMC_RSP_136 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sh_mmcif_host *host,
						struct mmc_command *cmd)
{
	if (cmd->flags & MMC_RSP_136) {
		cmd->resp[0] = FUNC0(host->addr, MMCIF_CE_RESP3);
		cmd->resp[1] = FUNC0(host->addr, MMCIF_CE_RESP2);
		cmd->resp[2] = FUNC0(host->addr, MMCIF_CE_RESP1);
		cmd->resp[3] = FUNC0(host->addr, MMCIF_CE_RESP0);
	} else
		cmd->resp[0] = FUNC0(host->addr, MMCIF_CE_RESP0);
}