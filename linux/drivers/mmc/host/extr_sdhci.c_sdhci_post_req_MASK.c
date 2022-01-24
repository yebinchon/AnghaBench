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
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ host_cookie; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 scalar_t__ COOKIE_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_data*) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_request *mrq,
				int err)
{
	struct sdhci_host *host = FUNC3(mmc);
	struct mmc_data *data = mrq->data;

	if (data->host_cookie != COOKIE_UNMAPPED)
		FUNC0(FUNC1(host->mmc), data->sg, data->sg_len,
			     FUNC2(data));

	data->host_cookie = COOKIE_UNMAPPED;
}