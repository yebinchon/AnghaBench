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
struct uniphier_sd_priv {int /*<<< orphan*/  dma_dir; } ;
struct tmio_mmc_host {int /*<<< orphan*/  lock; TYPE_1__* data; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg_ptr; int /*<<< orphan*/  mmc; } ;
struct dmaengine_result {scalar_t__ result; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 scalar_t__ DMA_TRANS_NOERROR ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  TMIO_STAT_DATAEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 struct uniphier_sd_priv* FUNC6 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC7(void *param,
					const struct dmaengine_result *result)
{
	struct tmio_mmc_host *host = param;
	struct uniphier_sd_priv *priv = FUNC6(host);
	unsigned long flags;

	FUNC0(FUNC1(host->mmc), host->sg_ptr, host->sg_len,
		     priv->dma_dir);

	FUNC2(&host->lock, flags);

	if (result->result == DMA_TRANS_NOERROR) {
		/*
		 * When the external DMA engine is enabled, strangely enough,
		 * the DATAEND flag can be asserted even if the DMA engine has
		 * not been kicked yet.  Enable the TMIO_STAT_DATAEND irq only
		 * after we make sure the DMA engine finishes the transfer,
		 * hence, in this callback.
		 */
		FUNC5(host, TMIO_STAT_DATAEND);
	} else {
		host->data->error = -ETIMEDOUT;
		FUNC4(host);
	}

	FUNC3(&host->lock, flags);
}