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
 struct mmci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmci_host*,struct mmc_data*,int) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *mmc, struct mmc_request *mrq,
			      int err)
{
	struct mmci_host *host = FUNC0(mmc);
	struct mmc_data *data = mrq->data;

	if (!data || !data->host_cookie)
		return;

	FUNC1(host, data, err);
}