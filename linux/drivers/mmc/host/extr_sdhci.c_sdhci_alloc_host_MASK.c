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
struct sdhci_host {int tuning_delay; int adma_table_cnt; int /*<<< orphan*/  sdma_boundary; int /*<<< orphan*/  tuning_loop_count; int /*<<< orphan*/  cqe_err_ier; int /*<<< orphan*/  cqe_ier; int /*<<< orphan*/  flags; int /*<<< orphan*/  mmc_host_ops; struct mmc_host* mmc; } ;
struct mmc_host {int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sdhci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TUNING_LOOP ; 
 int /*<<< orphan*/  SDHCI_CQE_INT_ERR_MASK ; 
 int /*<<< orphan*/  SDHCI_CQE_INT_MASK ; 
 int /*<<< orphan*/  SDHCI_DEFAULT_BOUNDARY_ARG ; 
 int SDHCI_MAX_SEGS ; 
 int /*<<< orphan*/  SDHCI_SIGNALING_330 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mmc_host* FUNC2 (int,struct device*) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  sdhci_ops ; 

struct sdhci_host *FUNC4(struct device *dev,
	size_t priv_size)
{
	struct mmc_host *mmc;
	struct sdhci_host *host;

	FUNC1(dev == NULL);

	mmc = FUNC2(sizeof(struct sdhci_host) + priv_size, dev);
	if (!mmc)
		return FUNC0(-ENOMEM);

	host = FUNC3(mmc);
	host->mmc = mmc;
	host->mmc_host_ops = sdhci_ops;
	mmc->ops = &host->mmc_host_ops;

	host->flags = SDHCI_SIGNALING_330;

	host->cqe_ier     = SDHCI_CQE_INT_MASK;
	host->cqe_err_ier = SDHCI_CQE_INT_ERR_MASK;

	host->tuning_delay = -1;
	host->tuning_loop_count = MAX_TUNING_LOOP;

	host->sdma_boundary = SDHCI_DEFAULT_BOUNDARY_ARG;

	/*
	 * The DMA table descriptor count is calculated as the maximum
	 * number of segments times 2, to allow for an alignment
	 * descriptor for each segment, plus 1 for a nop end descriptor.
	 */
	host->adma_table_cnt = SDHCI_MAX_SEGS * 2 + 1;

	return host;
}