#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int /*<<< orphan*/  next_data; scalar_t__ use_dma; } ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {scalar_t__ host_cookie; } ;

/* Variables and functions */
 struct omap_hsmmc_host* FUNC0 (struct mmc_host*) ; 
 struct dma_chan* FUNC1 (struct omap_hsmmc_host*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct omap_hsmmc_host*,TYPE_1__*,int /*<<< orphan*/ *,struct dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct omap_hsmmc_host *host = FUNC0(mmc);

	if (mrq->data->host_cookie) {
		mrq->data->host_cookie = 0;
		return ;
	}

	if (host->use_dma) {
		struct dma_chan *c = FUNC1(host, mrq->data);

		if (FUNC2(host, mrq->data,
						&host->next_data, c))
			mrq->data->host_cookie = 0;
	}
}