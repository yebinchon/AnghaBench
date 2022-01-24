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
struct slic_tx_queue {int /*<<< orphan*/  len; int /*<<< orphan*/  done_idx; int /*<<< orphan*/  put_idx; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static unsigned int FUNC2(struct slic_tx_queue *txq)
{
	/* ensure tail idx is updated */
	FUNC1();
	return FUNC0(txq->put_idx, txq->done_idx, txq->len);
}