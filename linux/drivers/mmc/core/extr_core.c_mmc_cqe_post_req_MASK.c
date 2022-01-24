#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_request {int dummy; } ;
struct mmc_host {TYPE_1__* cqe_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cqe_post_req ) (struct mmc_host*,struct mmc_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,struct mmc_request*) ; 

void FUNC1(struct mmc_host *host, struct mmc_request *mrq)
{
	if (host->cqe_ops->cqe_post_req)
		host->cqe_ops->cqe_post_req(host, mrq);
}