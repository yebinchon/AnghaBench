#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ddcb_prev; int /*<<< orphan*/  ddcb_finished; } ;
struct TYPE_3__ {void* retc; int /*<<< orphan*/  progress; void* attn; void* cmplt_ts; void* deque_ts; void* vcrc; int /*<<< orphan*/ * asv; } ;
struct ddcb_requ {size_t num; TYPE_2__ debug_data; TYPE_1__ cmd; struct ddcb_queue* queue; } ;
struct ddcb_queue {int ddcb_max; struct ddcb* ddcb_vaddr; } ;
struct ddcb {int /*<<< orphan*/  retc_16; int /*<<< orphan*/  progress_32; int /*<<< orphan*/  attn_16; int /*<<< orphan*/  cmplt_ts_64; int /*<<< orphan*/  deque_ts_64; int /*<<< orphan*/  vcrc_16; struct ddcb* asv; } ;

/* Variables and functions */
 int DDCB_ASV_LENGTH ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ddcb_requ*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ddcb*,int) ; 

__attribute__((used)) static void FUNC5(struct ddcb_requ *req, int ddcb_no)
{
	struct ddcb_queue *queue = req->queue;
	struct ddcb *pddcb = &queue->ddcb_vaddr[req->num];

	FUNC4(&req->cmd.asv[0], &pddcb->asv[0], DDCB_ASV_LENGTH);

	/* copy status flags of the variant part */
	req->cmd.vcrc     = FUNC0(pddcb->vcrc_16);
	req->cmd.deque_ts = FUNC2(pddcb->deque_ts_64);
	req->cmd.cmplt_ts = FUNC2(pddcb->cmplt_ts_64);

	req->cmd.attn     = FUNC0(pddcb->attn_16);
	req->cmd.progress = FUNC1(pddcb->progress_32);
	req->cmd.retc     = FUNC0(pddcb->retc_16);

	if (FUNC3(req)) {
		int prev_no = (ddcb_no == 0) ?
			queue->ddcb_max - 1 : ddcb_no - 1;
		struct ddcb *prev_pddcb = &queue->ddcb_vaddr[prev_no];

		FUNC4(&req->debug_data.ddcb_finished, pddcb,
		       sizeof(req->debug_data.ddcb_finished));
		FUNC4(&req->debug_data.ddcb_prev, prev_pddcb,
		       sizeof(req->debug_data.ddcb_prev));
	}
}