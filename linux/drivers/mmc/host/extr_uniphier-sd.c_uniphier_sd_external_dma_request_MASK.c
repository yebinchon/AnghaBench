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
struct uniphier_sd_priv {struct dma_chan* chan; } ;
struct tmio_mmc_host {int /*<<< orphan*/  dma_issue; struct dma_chan* chan_tx; struct dma_chan* chan_rx; int /*<<< orphan*/  mmc; } ;
struct tmio_mmc_data {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct dma_chan* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  uniphier_sd_external_dma_issue ; 
 struct uniphier_sd_priv* FUNC5 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC6(struct tmio_mmc_host *host,
					     struct tmio_mmc_data *pdata)
{
	struct uniphier_sd_priv *priv = FUNC5(host);
	struct dma_chan *chan;

	chan = FUNC2(FUNC3(host->mmc), "rx-tx");
	if (FUNC0(chan)) {
		FUNC1(FUNC3(host->mmc),
			 "failed to request DMA channel. falling back to PIO\n");
		return;	/* just use PIO even for -EPROBE_DEFER */
	}

	/* this driver uses a single channel for both RX an TX */
	priv->chan = chan;
	host->chan_rx = chan;
	host->chan_tx = chan;

	FUNC4(&host->dma_issue, uniphier_sd_external_dma_issue,
		     (unsigned long)host);
}