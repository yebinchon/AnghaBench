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
struct mxs_ssp {scalar_t__ base; } ;
struct mxs_mmc_host {int sdio_irq_en; int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; struct mxs_ssp ssp; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SSP_CTRL0_SDIO_IRQ_CHECK ; 
 int /*<<< orphan*/  BM_SSP_CTRL1_SDIO_IRQ_EN ; 
 int BM_SSP_STATUS_SDIO_IRQ ; 
 scalar_t__ HW_SSP_CTRL0 ; 
 scalar_t__ FUNC0 (struct mxs_ssp*) ; 
 scalar_t__ FUNC1 (struct mxs_ssp*) ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 struct mxs_mmc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, int enable)
{
	struct mxs_mmc_host *host = FUNC2(mmc);
	struct mxs_ssp *ssp = &host->ssp;
	unsigned long flags;

	FUNC5(&host->lock, flags);

	host->sdio_irq_en = enable;

	if (enable) {
		FUNC7(BM_SSP_CTRL0_SDIO_IRQ_CHECK,
		       ssp->base + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
		FUNC7(BM_SSP_CTRL1_SDIO_IRQ_EN,
		       ssp->base + FUNC0(ssp) + STMP_OFFSET_REG_SET);
	} else {
		FUNC7(BM_SSP_CTRL0_SDIO_IRQ_CHECK,
		       ssp->base + HW_SSP_CTRL0 + STMP_OFFSET_REG_CLR);
		FUNC7(BM_SSP_CTRL1_SDIO_IRQ_EN,
		       ssp->base + FUNC0(ssp) + STMP_OFFSET_REG_CLR);
	}

	FUNC6(&host->lock, flags);

	if (enable && FUNC4(ssp->base + FUNC1(ssp)) &
			BM_SSP_STATUS_SDIO_IRQ)
		FUNC3(host->mmc);

}