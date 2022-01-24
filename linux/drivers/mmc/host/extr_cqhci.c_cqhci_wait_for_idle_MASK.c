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
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int /*<<< orphan*/  wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cqhci_host*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	int ret;

	FUNC1(cq_host->wait_queue, FUNC0(cq_host, &ret));

	return ret;
}