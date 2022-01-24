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
struct ibmvnic_sub_crq_queue {int /*<<< orphan*/  hw_irq; int /*<<< orphan*/  crq_num; int /*<<< orphan*/  msg_token; scalar_t__ cur; int /*<<< orphan*/  used; int /*<<< orphan*/  msgs; scalar_t__ irq; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct ibmvnic_sub_crq_queue*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ibmvnic_adapter *adapter,
				   struct ibmvnic_sub_crq_queue *scrq)
{
	int rc;

	if (scrq->irq) {
		FUNC1(scrq->irq, scrq);
		FUNC3(scrq->irq);
		scrq->irq = 0;
	}

	FUNC4(scrq->msgs, 0, 4 * PAGE_SIZE);
	FUNC0(&scrq->used, 0);
	scrq->cur = 0;

	rc = FUNC2(adapter->vdev->unit_address, scrq->msg_token,
			   4 * PAGE_SIZE, &scrq->crq_num, &scrq->hw_irq);
	return rc;
}