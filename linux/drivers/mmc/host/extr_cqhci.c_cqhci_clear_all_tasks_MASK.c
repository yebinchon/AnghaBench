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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int /*<<< orphan*/  wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_CLEAR_ALL_TASKS ; 
 int /*<<< orphan*/  CQHCI_CTL ; 
 int /*<<< orphan*/  CQHCI_IS_TCL ; 
 int /*<<< orphan*/  FUNC0 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cqhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct cqhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static bool FUNC8(struct mmc_host *mmc, unsigned int timeout)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	bool ret;
	u32 ctl;

	FUNC1(cq_host, CQHCI_IS_TCL);

	ctl = FUNC0(cq_host, CQHCI_CTL);
	ctl |= CQHCI_CLEAR_ALL_TASKS;
	FUNC3(cq_host, ctl, CQHCI_CTL);

	FUNC7(cq_host->wait_queue, FUNC2(cq_host),
			   FUNC5(timeout) + 1);

	FUNC1(cq_host, 0);

	ret = FUNC2(cq_host);

	if (!ret)
		FUNC6("%s: cqhci: Failed to clear tasks\n",
			 FUNC4(mmc));

	return ret;
}