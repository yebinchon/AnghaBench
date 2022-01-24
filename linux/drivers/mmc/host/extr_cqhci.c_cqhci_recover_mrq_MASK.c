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
struct mmc_request {TYPE_1__* cmd; struct mmc_data* data; } ;
struct mmc_data {void* error; scalar_t__ bytes_xfered; } ;
struct cqhci_slot {int /*<<< orphan*/  flags; struct mmc_request* mrq; } ;
struct cqhci_host {int qcnt; int /*<<< orphan*/  mmc; struct cqhci_slot* slot; } ;
struct TYPE_2__ {void* error; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 

__attribute__((used)) static void FUNC2(struct cqhci_host *cq_host, unsigned int tag)
{
	struct cqhci_slot *slot = &cq_host->slot[tag];
	struct mmc_request *mrq = slot->mrq;
	struct mmc_data *data;

	if (!mrq)
		return;

	slot->mrq = NULL;

	cq_host->qcnt -= 1;

	data = mrq->data;
	if (data) {
		data->bytes_xfered = 0;
		data->error = FUNC0(slot->flags);
	} else {
		mrq->cmd->error = FUNC0(slot->flags);
	}

	FUNC1(cq_host->mmc, mrq);
}