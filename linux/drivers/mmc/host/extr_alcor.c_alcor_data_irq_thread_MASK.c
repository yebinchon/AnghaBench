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
struct alcor_sdmmc_host {int /*<<< orphan*/  sg_count; scalar_t__ dma_on; int /*<<< orphan*/  blocks; int /*<<< orphan*/  dev; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int AU6601_INT_DATA_END ; 
 int AU6601_INT_DATA_MASK ; 
 int /*<<< orphan*/  AU6601_RESET_DATA ; 
 scalar_t__ FUNC0 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct alcor_sdmmc_host *host, u32 intmask)
{
	intmask &= AU6601_INT_DATA_MASK;

	if (!intmask)
		return;

	if (!host->data) {
		FUNC3(host->dev, "Got data interrupt 0x%08x even though no data operation was in progress.\n",
			intmask);
		FUNC2(host, AU6601_RESET_DATA);
		return;
	}

	if (FUNC0(host, intmask))
		return;

	if ((intmask & AU6601_INT_DATA_END) || !host->blocks ||
	    (host->dma_on && !host->sg_count))
		FUNC1(host);
}