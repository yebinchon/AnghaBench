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
struct mmci_host {int dummy; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int /*<<< orphan*/  host_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mmci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmci_host*,struct mmc_data*,int) ; 
 scalar_t__ FUNC3 (struct mmci_host*,struct mmc_data*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct mmci_host *host = FUNC1(mmc);
	struct mmc_data *data = mrq->data;

	if (!data)
		return;

	FUNC0(data->host_cookie);

	if (FUNC3(host, data))
		return;

	FUNC2(host, data, true);
}