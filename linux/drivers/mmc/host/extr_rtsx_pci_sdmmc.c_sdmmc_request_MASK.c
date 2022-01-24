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
struct realtek_pci_sdmmc {int /*<<< orphan*/  work; int /*<<< orphan*/  using_cookie; int /*<<< orphan*/  host_mutex; struct mmc_request* mrq; } ;
struct mmc_request {int /*<<< orphan*/  cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int dummy; } ;

/* Variables and functions */
 struct realtek_pci_sdmmc* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct realtek_pci_sdmmc*,struct mmc_data*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct mmc_data*) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct realtek_pci_sdmmc *host = FUNC0(mmc);
	struct mmc_data *data = mrq->data;

	FUNC1(&host->host_mutex);
	host->mrq = mrq;
	FUNC2(&host->host_mutex);

	if (FUNC5(mrq->cmd) || FUNC6(mrq->cmd, data))
		host->using_cookie = FUNC4(host, data, false);

	FUNC3(&host->work);
}