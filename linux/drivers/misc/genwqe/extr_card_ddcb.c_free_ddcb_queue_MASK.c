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
struct genwqe_dev {int dummy; } ;
struct ddcb_queue {int ddcb_max; unsigned long long ddcb_daddr; int /*<<< orphan*/ * ddcb_vaddr; int /*<<< orphan*/ * ddcb_req; } ;
struct ddcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,unsigned int,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct genwqe_dev *cd, struct ddcb_queue *queue)
{
	unsigned int queue_size;

	queue_size = FUNC2(queue->ddcb_max * sizeof(struct ddcb), PAGE_SIZE);

	FUNC1(queue->ddcb_req);
	queue->ddcb_req = NULL;

	if (queue->ddcb_vaddr) {
		FUNC0(cd, queue_size, queue->ddcb_vaddr,
					queue->ddcb_daddr);
		queue->ddcb_vaddr = NULL;
		queue->ddcb_daddr = 0ull;
	}
}