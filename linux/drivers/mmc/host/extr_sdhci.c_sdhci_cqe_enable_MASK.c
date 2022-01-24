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
typedef  int /*<<< orphan*/  u8 ;
struct sdhci_host {int caps1; int flags; int cqe_on; int /*<<< orphan*/  lock; int /*<<< orphan*/  ier; int /*<<< orphan*/  cqe_ier; int /*<<< orphan*/  sdma_boundary; scalar_t__ v4_mode; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_BLOCK_SIZE ; 
 int SDHCI_CAN_DO_ADMA3 ; 
 int /*<<< orphan*/  SDHCI_CTRL_ADMA3 ; 
 int /*<<< orphan*/  SDHCI_CTRL_ADMA32 ; 
 int /*<<< orphan*/  SDHCI_CTRL_ADMA64 ; 
 int /*<<< orphan*/  SDHCI_CTRL_DMA_MASK ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int SDHCI_USE_64_BIT_DMA ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC12(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC2(mmc);
	unsigned long flags;
	u8 ctrl;

	FUNC10(&host->lock, flags);

	ctrl = FUNC4(host, SDHCI_HOST_CONTROL);
	ctrl &= ~SDHCI_CTRL_DMA_MASK;
	/*
	 * Host from V4.10 supports ADMA3 DMA type.
	 * ADMA3 performs integrated descriptor which is more suitable
	 * for cmd queuing to fetch both command and transfer descriptors.
	 */
	if (host->v4_mode && (host->caps1 & SDHCI_CAN_DO_ADMA3))
		ctrl |= SDHCI_CTRL_ADMA3;
	else if (host->flags & SDHCI_USE_64_BIT_DMA)
		ctrl |= SDHCI_CTRL_ADMA64;
	else
		ctrl |= SDHCI_CTRL_ADMA32;
	FUNC7(host, ctrl, SDHCI_HOST_CONTROL);

	FUNC9(host, FUNC0(host->sdma_boundary, 512),
		     SDHCI_BLOCK_SIZE);

	/* Set maximum timeout */
	FUNC6(host, NULL);

	host->ier = host->cqe_ier;

	FUNC8(host, host->ier, SDHCI_INT_ENABLE);
	FUNC8(host, host->ier, SDHCI_SIGNAL_ENABLE);

	host->cqe_on = true;

	FUNC3("%s: sdhci: CQE on, IRQ mask %#x, IRQ status %#x\n",
		 FUNC1(mmc), host->ier,
		 FUNC5(host, SDHCI_INT_STATUS));

	FUNC11(&host->lock, flags);
}