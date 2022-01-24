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
struct mmc_data {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; scalar_t__ sg_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_data*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_request *mrq,
			       int err)
{
	struct mmc_data *data = mrq->data;

	if (data && FUNC1(data) && data->sg_count)
		FUNC0(FUNC2(mmc), data->sg, data->sg_len,
			     FUNC3(data));
}