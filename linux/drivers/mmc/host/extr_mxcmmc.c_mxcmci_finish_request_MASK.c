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
typedef  int /*<<< orphan*/  u32 ;
struct mxcmci_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * req; int /*<<< orphan*/  lock; scalar_t__ use_sdio; int /*<<< orphan*/  default_irq_mask; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_SDIO_IRQ_EN ; 
 int /*<<< orphan*/  MMC_REG_INT_CNTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxcmci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mxcmci_host *host,
		struct mmc_request *req)
{
	u32 int_cntr = host->default_irq_mask;
	unsigned long flags;

	FUNC2(&host->lock, flags);
	if (host->use_sdio)
		int_cntr |= INT_SDIO_IRQ_EN;
	FUNC1(host, int_cntr, MMC_REG_INT_CNTR);
	FUNC3(&host->lock, flags);

	host->req = NULL;
	host->cmd = NULL;
	host->data = NULL;

	FUNC0(host->mmc, req);
}