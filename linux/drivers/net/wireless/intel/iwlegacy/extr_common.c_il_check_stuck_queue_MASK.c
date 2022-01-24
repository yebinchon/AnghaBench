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
struct il_queue {scalar_t__ read_ptr; scalar_t__ write_ptr; int /*<<< orphan*/  id; } ;
struct il_tx_queue {unsigned long time_stamp; struct il_queue q; } ;
struct il_priv {TYPE_1__* cfg; struct il_tx_queue* txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  wd_timeout; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct il_priv*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il, int cnt)
{
	struct il_tx_queue *txq = &il->txq[cnt];
	struct il_queue *q = &txq->q;
	unsigned long timeout;
	unsigned long now = jiffies;
	int ret;

	if (q->read_ptr == q->write_ptr) {
		txq->time_stamp = now;
		return 0;
	}

	timeout =
	    txq->time_stamp +
	    FUNC3(il->cfg->wd_timeout);

	if (FUNC4(now, timeout)) {
		FUNC0("Queue %d stuck for %u ms.\n", q->id,
		       FUNC2(now - txq->time_stamp));
		ret = FUNC1(il, false);
		return (ret == -EAGAIN) ? 0 : 1;
	}

	return 0;
}