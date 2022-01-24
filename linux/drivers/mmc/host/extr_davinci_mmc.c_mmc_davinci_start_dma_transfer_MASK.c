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
struct mmc_davinci_host {int sg_len; int do_dma; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int /*<<< orphan*/  sg_len; scalar_t__ sg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_davinci_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_data*) ; 
 int rw_threshold ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mmc_davinci_host *host,
		struct mmc_data *data)
{
	int i;
	int mask = rw_threshold - 1;
	int ret = 0;

	host->sg_len = FUNC0(FUNC3(host->mmc), data->sg, data->sg_len,
				  FUNC4(data));

	/* no individual DMA segment should need a partial FIFO */
	for (i = 0; i < host->sg_len; i++) {
		if (FUNC5(data->sg + i) & mask) {
			FUNC1(FUNC3(host->mmc),
				     data->sg, data->sg_len,
				     FUNC4(data));
			return -1;
		}
	}

	host->do_dma = 1;
	ret = FUNC2(host, data);

	return ret;
}