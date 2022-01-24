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
struct cqhci_slot {scalar_t__ mrq; void* flags; } ;
struct cqhci_host {int /*<<< orphan*/  lock; struct cqhci_slot* slot; scalar_t__ recovery_halt; int /*<<< orphan*/  qcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_TERRI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int NUM_SLOTS ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct mmc_host *mmc, u32 status, int cmd_error,
			    int data_error)
{
	struct cqhci_host *cq_host = mmc->cqe_private;
	struct cqhci_slot *slot;
	u32 terri;
	int tag;

	FUNC10(&cq_host->lock);

	terri = FUNC6(cq_host, CQHCI_TERRI);

	FUNC9("%s: cqhci: error IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\n",
		 FUNC8(mmc), status, cmd_error, data_error, terri);

	/* Forget about errors when recovery has already been triggered */
	if (cq_host->recovery_halt)
		goto out_unlock;

	if (!cq_host->qcnt) {
		FUNC4(1, "%s: cqhci: error when idle. IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\n",
			  FUNC8(mmc), status, cmd_error, data_error,
			  terri);
		goto out_unlock;
	}

	if (FUNC1(terri)) {
		tag = FUNC0(terri);
		slot = &cq_host->slot[tag];
		if (slot->mrq) {
			slot->flags = FUNC5(cmd_error, data_error);
			FUNC7(mmc, slot->mrq, true);
		}
	}

	if (FUNC3(terri)) {
		tag = FUNC2(terri);
		slot = &cq_host->slot[tag];
		if (slot->mrq) {
			slot->flags = FUNC5(data_error, cmd_error);
			FUNC7(mmc, slot->mrq, true);
		}
	}

	if (!cq_host->recovery_halt) {
		/*
		 * The only way to guarantee forward progress is to mark at
		 * least one task in error, so if none is indicated, pick one.
		 */
		for (tag = 0; tag < NUM_SLOTS; tag++) {
			slot = &cq_host->slot[tag];
			if (!slot->mrq)
				continue;
			slot->flags = FUNC5(data_error, cmd_error);
			FUNC7(mmc, slot->mrq, true);
			break;
		}
	}

out_unlock:
	FUNC11(&cq_host->lock);
}