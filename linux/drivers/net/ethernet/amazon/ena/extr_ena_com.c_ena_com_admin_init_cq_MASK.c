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
typedef  int /*<<< orphan*/  u16 ;
struct ena_com_admin_cq {int phase; scalar_t__ head; int /*<<< orphan*/  entries; int /*<<< orphan*/  dma_addr; } ;
struct ena_com_admin_queue {int /*<<< orphan*/  q_dmadev; int /*<<< orphan*/  q_depth; struct ena_com_admin_cq cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct ena_com_admin_queue *queue)
{
	struct ena_com_admin_cq *cq = &queue->cq;
	u16 size = FUNC0(queue->q_depth);

	cq->entries = FUNC1(queue->q_dmadev, size, &cq->dma_addr,
					 GFP_KERNEL);

	if (!cq->entries) {
		FUNC2("memory allocation failed\n");
		return -ENOMEM;
	}

	cq->head = 0;
	cq->phase = 1;

	return 0;
}