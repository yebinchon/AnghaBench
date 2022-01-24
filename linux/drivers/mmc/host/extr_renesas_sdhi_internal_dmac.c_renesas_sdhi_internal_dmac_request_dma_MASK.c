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
struct tmio_mmc_host {int /*<<< orphan*/  dma_issue; void* chan_tx; void* chan_rx; } ;
struct tmio_mmc_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_complete; } ;
struct renesas_sdhi {TYPE_1__ dma_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CM_INFO1_MASK ; 
 int /*<<< orphan*/  DM_CM_INFO2_MASK ; 
 int /*<<< orphan*/  INFO1_MASK_CLEAR ; 
 int /*<<< orphan*/  INFO2_MASK_CLEAR ; 
 struct renesas_sdhi* FUNC0 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  renesas_sdhi_internal_dmac_complete_tasklet_fn ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  renesas_sdhi_internal_dmac_issue_tasklet_fn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct tmio_mmc_host *host,
				       struct tmio_mmc_data *pdata)
{
	struct renesas_sdhi *priv = FUNC0(host);

	/* Disable DMAC interrupts, we don't use them */
	FUNC1(host, DM_CM_INFO1_MASK,
					    INFO1_MASK_CLEAR);
	FUNC1(host, DM_CM_INFO2_MASK,
					    INFO2_MASK_CLEAR);

	/* Each value is set to non-zero to assume "enabling" each DMA */
	host->chan_rx = host->chan_tx = (void *)0xdeadbeaf;

	FUNC2(&priv->dma_priv.dma_complete,
		     renesas_sdhi_internal_dmac_complete_tasklet_fn,
		     (unsigned long)host);
	FUNC2(&host->dma_issue,
		     renesas_sdhi_internal_dmac_issue_tasklet_fn,
		     (unsigned long)host);
}