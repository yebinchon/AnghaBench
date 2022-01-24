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
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; } ;
struct jz4740_mmc_host {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ COOKIE_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 struct dma_chan* FUNC2 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 struct jz4740_mmc_host* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc,
				    struct mmc_request *mrq,
				    int err)
{
	struct jz4740_mmc_host *host = FUNC3(mmc);
	struct mmc_data *data = mrq->data;

	if (data && data->host_cookie != COOKIE_UNMAPPED)
		FUNC1(host, data);

	if (err) {
		struct dma_chan *chan = FUNC2(host, data);

		FUNC0(chan);
	}
}