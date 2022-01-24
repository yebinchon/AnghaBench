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
struct msdc_host {int dummy; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int /*<<< orphan*/  host_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSDC_ASYNC_FLAG ; 
 struct msdc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct msdc_host*,struct mmc_request*) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct msdc_host *host = FUNC0(mmc);
	struct mmc_data *data = mrq->data;

	if (!data)
		return;

	FUNC1(host, mrq);
	data->host_cookie |= MSDC_ASYNC_FLAG;
}