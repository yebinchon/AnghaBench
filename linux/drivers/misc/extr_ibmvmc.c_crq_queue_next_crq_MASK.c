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
struct ibmvmc_crq_msg {int valid; } ;
struct crq_queue {size_t cur; size_t size; int /*<<< orphan*/  lock; struct ibmvmc_crq_msg* msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ibmvmc_crq_msg *FUNC3(struct crq_queue *queue)
{
	struct ibmvmc_crq_msg *crq;
	unsigned long flags;

	FUNC1(&queue->lock, flags);
	crq = &queue->msgs[queue->cur];
	if (crq->valid & 0x80) {
		if (++queue->cur == queue->size)
			queue->cur = 0;

		/* Ensure the read of the valid bit occurs before reading any
		 * other bits of the CRQ entry
		 */
		FUNC0();
	} else {
		crq = NULL;
	}

	FUNC2(&queue->lock, flags);

	return crq;
}