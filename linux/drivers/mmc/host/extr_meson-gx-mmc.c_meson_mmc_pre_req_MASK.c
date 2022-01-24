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
struct mmc_data {int /*<<< orphan*/  sg_count; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; int /*<<< orphan*/  host_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EMMC_PRE_REQ_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_data*) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct mmc_data *data = mrq->data;

	if (!data)
		return;

	FUNC3(mmc, mrq);
	data->host_cookie |= SD_EMMC_PRE_REQ_DONE;

	if (!FUNC2(data))
		return;

	data->sg_count = FUNC1(FUNC4(mmc), data->sg, data->sg_len,
                                   FUNC5(data));
	if (!data->sg_count)
		FUNC0(FUNC4(mmc), "dma_map_sg failed");
}