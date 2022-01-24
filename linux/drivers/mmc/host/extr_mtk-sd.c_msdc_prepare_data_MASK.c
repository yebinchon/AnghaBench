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
struct msdc_host {int /*<<< orphan*/  dev; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int host_cookie; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; int /*<<< orphan*/  sg_count; } ;

/* Variables and functions */
 int MSDC_PREPARE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_data*) ; 

__attribute__((used)) static void FUNC2(struct msdc_host *host, struct mmc_request *mrq)
{
	struct mmc_data *data = mrq->data;

	if (!(data->host_cookie & MSDC_PREPARE_FLAG)) {
		data->host_cookie |= MSDC_PREPARE_FLAG;
		data->sg_count = FUNC0(host->dev, data->sg, data->sg_len,
					    FUNC1(data));
	}
}