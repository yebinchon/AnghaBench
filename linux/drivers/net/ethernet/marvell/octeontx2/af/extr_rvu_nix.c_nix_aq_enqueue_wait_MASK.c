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
typedef  int u64 ;
struct rvu_block {int /*<<< orphan*/  addr; struct admin_queue* aq; } ;
struct rvu {int dummy; } ;
struct nix_aq_res_s {scalar_t__ compcode; } ;
struct nix_aq_inst_s {int dummy; } ;
struct admin_queue {TYPE_2__* inst; TYPE_1__* res; } ;
struct TYPE_4__ {int entry_sz; scalar_t__ base; } ;
struct TYPE_3__ {scalar_t__ base; } ;

/* Variables and functions */
 int AQ_PTR_MASK ; 
 int EBUSY ; 
 int /*<<< orphan*/  NIX_AF_AQ_DOOR ; 
 int /*<<< orphan*/  NIX_AF_AQ_STATUS ; 
 scalar_t__ NIX_AQ_COMP_GOOD ; 
 scalar_t__ NIX_AQ_COMP_NOTDONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nix_aq_res_s*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct rvu *rvu, struct rvu_block *block,
			       struct nix_aq_inst_s *inst)
{
	struct admin_queue *aq = block->aq;
	struct nix_aq_res_s *result;
	int timeout = 1000;
	u64 reg, head;

	result = (struct nix_aq_res_s *)aq->res->base;

	/* Get current head pointer where to append this instruction */
	reg = FUNC3(rvu, block->addr, NIX_AF_AQ_STATUS);
	head = (reg >> 4) & AQ_PTR_MASK;

	FUNC1((void *)(aq->inst->base + (head * aq->inst->entry_sz)),
	       (void *)inst, aq->inst->entry_sz);
	FUNC2(result, 0, sizeof(*result));
	/* sync into memory */
	FUNC6();

	/* Ring the doorbell and wait for result */
	FUNC4(rvu, block->addr, NIX_AF_AQ_DOOR, 1);
	while (result->compcode == NIX_AQ_COMP_NOTDONE) {
		FUNC0();
		FUNC5(1);
		timeout--;
		if (!timeout)
			return -EBUSY;
	}

	if (result->compcode != NIX_AQ_COMP_GOOD)
		/* TODO: Replace this with some error code */
		return -EBUSY;

	return 0;
}