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
struct mmc_host {int dummy; } ;
struct dw_mci_slot {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int SDMMC_STATUS_BUSY ; 
 int /*<<< orphan*/  STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw_mci_slot* FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	struct dw_mci_slot *slot = FUNC1(mmc);
	u32 status;

	/*
	 * Check the busy bit which is low when DAT[3:0]
	 * (the data lines) are 0000
	 */
	status = FUNC0(slot->host, STATUS);

	return !!(status & SDMMC_STATUS_BUSY);
}