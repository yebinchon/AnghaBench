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
struct sk_buff {int dummy; } ;
struct sge {struct cmdQ* cmdQ; struct adapter* adapter; } ;
struct cmdQ {unsigned int size; unsigned int in_use; unsigned int genbit; unsigned int pidx; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;
struct adapter {scalar_t__ regs; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 scalar_t__ A_SG_DOORBELL ; 
 int /*<<< orphan*/  CMDQ_STAT_LAST_PKT_DB ; 
 int /*<<< orphan*/  CMDQ_STAT_RUNNING ; 
 int /*<<< orphan*/  F_CMDQ0_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sge*,struct cmdQ*) ; 
 struct sk_buff* FUNC4 (struct sge*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,struct sk_buff*,unsigned int,unsigned int,struct cmdQ*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(unsigned long arg)
{
	struct sge *sge = (struct sge *) arg;
	struct adapter *adapter = sge->adapter;
	struct cmdQ *q = &sge->cmdQ[0];
	struct sk_buff *skb;
	unsigned int credits, queued_skb = 0;

	FUNC7(&q->lock);
	FUNC3(sge, q);

	credits = q->size - q->in_use;
	FUNC2("restart_sched credits=%d\n", credits);
	while ((skb = FUNC4(sge, NULL, credits)) != NULL) {
		unsigned int genbit, pidx, count;
	        count = 1 + FUNC6(skb)->nr_frags;
		count += FUNC1(skb);
		q->in_use += count;
		genbit = q->genbit;
		pidx = q->pidx;
		q->pidx += count;
		if (q->pidx >= q->size) {
			q->pidx -= q->size;
			q->genbit ^= 1;
		}
		FUNC10(adapter, skb, pidx, genbit, q);
	        credits = q->size - q->in_use;
		queued_skb = 1;
	}

	if (queued_skb) {
		FUNC0(CMDQ_STAT_LAST_PKT_DB, &q->status);
		if (FUNC9(CMDQ_STAT_RUNNING, &q->status) == 0) {
			FUNC5(CMDQ_STAT_LAST_PKT_DB, &q->status);
			FUNC11(F_CMDQ0_ENABLE, adapter->regs + A_SG_DOORBELL);
		}
	}
	FUNC8(&q->lock);
}