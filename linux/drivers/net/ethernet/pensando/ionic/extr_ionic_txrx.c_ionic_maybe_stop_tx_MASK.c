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
struct ionic_queue {int /*<<< orphan*/  index; TYPE_1__* lif; int /*<<< orphan*/  stop; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ionic_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ionic_queue *q, int ndescs)
{
	int stopped = 0;

	if (FUNC4(!FUNC0(q, ndescs))) {
		FUNC1(q->lif->netdev, q->index);
		q->stop++;
		stopped = 1;

		/* Might race with ionic_tx_clean, check again */
		FUNC3();
		if (FUNC0(q, ndescs)) {
			FUNC2(q->lif->netdev, q->index);
			stopped = 0;
		}
	}

	return stopped;
}