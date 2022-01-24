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
typedef  scalar_t__ u32 ;
struct sunxi_mmc_host {TYPE_1__* mmc; int /*<<< orphan*/  lock; scalar_t__ sdio_imask; int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IMASK ; 
 scalar_t__ SDXC_SDIO_INTERRUPT ; 
 struct sunxi_mmc_host* FUNC0 (struct mmc_host*) ; 
 scalar_t__ FUNC1 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, int enable)
{
	struct sunxi_mmc_host *host = FUNC0(mmc);
	unsigned long flags;
	u32 imask;

	if (enable)
		FUNC3(host->dev);

	FUNC5(&host->lock, flags);

	imask = FUNC1(host, REG_IMASK);
	if (enable) {
		host->sdio_imask = SDXC_SDIO_INTERRUPT;
		imask |= SDXC_SDIO_INTERRUPT;
	} else {
		host->sdio_imask = 0;
		imask &= ~SDXC_SDIO_INTERRUPT;
	}
	FUNC2(host, REG_IMASK, imask);
	FUNC6(&host->lock, flags);

	if (!enable)
		FUNC4(host->mmc->parent);
}