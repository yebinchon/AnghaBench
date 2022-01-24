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
typedef  int u32 ;
struct mmc_host {int caps2; int cqe_on; } ;
struct cqhci_host {int caps; int rca; int activated; TYPE_1__* ops; int /*<<< orphan*/  desc_dma_base; struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_CFG ; 
 int CQHCI_DCMD ; 
 int CQHCI_ENABLE ; 
 int /*<<< orphan*/  CQHCI_IS_MASK ; 
 int /*<<< orphan*/  CQHCI_SSC2 ; 
 int CQHCI_TASK_DESC_SZ ; 
 int CQHCI_TASK_DESC_SZ_128 ; 
 int /*<<< orphan*/  CQHCI_TDLBA ; 
 int /*<<< orphan*/  CQHCI_TDLBAU ; 
 int MMC_CAP2_CQE_DCMD ; 
 int FUNC0 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cqhci_host*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct cqhci_host *cq_host)
{
	struct mmc_host *mmc = cq_host->mmc;
	u32 cqcfg;

	cqcfg = FUNC0(cq_host, CQHCI_CFG);

	/* Configuration must not be changed while enabled */
	if (cqcfg & CQHCI_ENABLE) {
		cqcfg &= ~CQHCI_ENABLE;
		FUNC2(cq_host, cqcfg, CQHCI_CFG);
	}

	cqcfg &= ~(CQHCI_DCMD | CQHCI_TASK_DESC_SZ);

	if (mmc->caps2 & MMC_CAP2_CQE_DCMD)
		cqcfg |= CQHCI_DCMD;

	if (cq_host->caps & CQHCI_TASK_DESC_SZ_128)
		cqcfg |= CQHCI_TASK_DESC_SZ;

	FUNC2(cq_host, cqcfg, CQHCI_CFG);

	FUNC2(cq_host, FUNC3(cq_host->desc_dma_base),
		     CQHCI_TDLBA);
	FUNC2(cq_host, FUNC5(cq_host->desc_dma_base),
		     CQHCI_TDLBAU);

	FUNC2(cq_host, cq_host->rca, CQHCI_SSC2);

	FUNC1(cq_host, 0);

	cqcfg |= CQHCI_ENABLE;

	FUNC2(cq_host, cqcfg, CQHCI_CFG);

	mmc->cqe_on = true;

	if (cq_host->ops->enable)
		cq_host->ops->enable(mmc);

	/* Ensure all writes are done before interrupts are enabled */
	FUNC6();

	FUNC1(cq_host, CQHCI_IS_MASK);

	cq_host->activated = true;
}