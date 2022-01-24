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
struct tmio_mmc_host {int sdio_irq_mask; TYPE_1__* pdata; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_RESET_SD ; 
 int /*<<< orphan*/  CTL_SDIO_IRQ_MASK ; 
 int /*<<< orphan*/  CTL_TRANSACTION_CTL ; 
 int TMIO_MMC_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host)
{
	/* FIXME - should we set stop clock reg here */
	FUNC0(host, CTL_RESET_SD, 0x0000);
	FUNC1(10000, 11000);
	FUNC0(host, CTL_RESET_SD, 0x0001);
	FUNC1(10000, 11000);

	if (host->pdata->flags & TMIO_MMC_SDIO_IRQ) {
		FUNC0(host, CTL_SDIO_IRQ_MASK, host->sdio_irq_mask);
		FUNC0(host, CTL_TRANSACTION_CTL, 0x0001);
	}
}