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
struct mmc_card {int /*<<< orphan*/  rca; } ;
struct cqhci_host {int enabled; int /*<<< orphan*/  rca; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cqhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*) ; 
 int FUNC2 (struct cqhci_host*) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc, struct mmc_card *card)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	int err;

	if (cq_host->enabled)
		return 0;

	cq_host->rca = card->rca;

	err = FUNC2(cq_host);
	if (err)
		return err;

	FUNC0(cq_host);

	cq_host->enabled = true;

#ifdef DEBUG
	cqhci_dumpregs(cq_host);
#endif
	return 0;
}