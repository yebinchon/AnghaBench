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
struct mmc_host {int dummy; } ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_mci_slot*,int) ; 
 struct dw_mci_slot* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, int enb)
{
	struct dw_mci_slot *slot = FUNC1(mmc);
	struct dw_mci *host = slot->host;

	FUNC0(slot, enb);

	/* Avoid runtime suspending the device when SDIO IRQ is enabled */
	if (enb)
		FUNC2(host->dev);
	else
		FUNC3(host->dev);
}