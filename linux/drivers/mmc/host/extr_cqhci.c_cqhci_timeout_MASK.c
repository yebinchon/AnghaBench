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
struct mmc_request {int dummy; } ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_slot {int /*<<< orphan*/  flags; struct mmc_request* mrq; } ;
struct cqhci_host {int recovery_halt; int /*<<< orphan*/  lock; struct cqhci_slot* slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_EXTERNAL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct cqhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*,int) ; 
 int FUNC2 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC7(struct mmc_host *mmc, struct mmc_request *mrq,
			  bool *recovery_needed)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	int tag = FUNC2(mrq);
	struct cqhci_slot *slot = &cq_host->slot[tag];
	unsigned long flags;
	bool timed_out;

	FUNC5(&cq_host->lock, flags);
	timed_out = slot->mrq == mrq;
	if (timed_out) {
		slot->flags |= CQHCI_EXTERNAL_TIMEOUT;
		FUNC1(mmc, mrq, false);
		*recovery_needed = cq_host->recovery_halt;
	}
	FUNC6(&cq_host->lock, flags);

	if (timed_out) {
		FUNC4("%s: cqhci: timeout for tag %d\n",
		       FUNC3(mmc), tag);
		FUNC0(cq_host);
	}

	return timed_out;
}