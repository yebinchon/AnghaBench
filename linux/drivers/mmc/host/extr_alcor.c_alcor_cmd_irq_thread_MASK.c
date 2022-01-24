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
struct alcor_sdmmc_host {int /*<<< orphan*/ * cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AU6601_INT_CMD_END ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct alcor_sdmmc_host *host, u32 intmask)
{
	intmask &= AU6601_INT_CMD_END;

	if (!intmask)
		return;

	if (!host->cmd && intmask & AU6601_INT_CMD_END) {
		FUNC2(host->dev, "Got command interrupt 0x%08x even though no command operation was in progress.\n",
			intmask);
	}

	/* Processed actual command. */
	if (!host->data)
		FUNC0(host, 1);
	else
		FUNC1(host);
	host->cmd = NULL;
}