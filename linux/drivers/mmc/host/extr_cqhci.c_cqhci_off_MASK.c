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
typedef  int u32 ;
struct mmc_host {int cqe_on; struct cqhci_host* cqe_private; } ;
struct cqhci_host {TYPE_1__* ops; scalar_t__ recovery_halt; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct mmc_host*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_CTL ; 
 int CQHCI_HALT ; 
 int /*<<< orphan*/  CQHCI_OFF_TIMEOUT ; 
 int FUNC0 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*,int) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	ktime_t timeout;
	bool timed_out;
	u32 reg;

	if (!cq_host->enabled || !mmc->cqe_on || cq_host->recovery_halt)
		return;

	if (cq_host->ops->disable)
		cq_host->ops->disable(mmc, false);

	FUNC1(cq_host, CQHCI_HALT, CQHCI_CTL);

	timeout = FUNC2(FUNC4(), CQHCI_OFF_TIMEOUT);
	while (1) {
		timed_out = FUNC3(FUNC4(), timeout) > 0;
		reg = FUNC0(cq_host, CQHCI_CTL);
		if ((reg & CQHCI_HALT) || timed_out)
			break;
	}

	if (timed_out)
		FUNC7("%s: cqhci: CQE stuck on\n", FUNC5(mmc));
	else
		FUNC6("%s: cqhci: CQE off\n", FUNC5(mmc));

	mmc->cqe_on = false;
}