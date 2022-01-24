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
typedef  union sub_crq {int dummy; } sub_crq ;
struct ibmvnic_sub_crq_queue {int size; union sub_crq* msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  irq; int /*<<< orphan*/  hw_irq; int /*<<< orphan*/  crq_num; int /*<<< orphan*/  lock; struct ibmvnic_adapter* adapter; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int GFP_KERNEL ; 
 int H_CLOSED ; 
 int H_RESOURCE ; 
 int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,union sub_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvnic_sub_crq_queue*) ; 
 struct ibmvnic_sub_crq_queue* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ibmvnic_sub_crq_queue *FUNC12(struct ibmvnic_adapter
							*adapter)
{
	struct device *dev = &adapter->vdev->dev;
	struct ibmvnic_sub_crq_queue *scrq;
	int rc;

	scrq = FUNC9(sizeof(*scrq), GFP_KERNEL);
	if (!scrq)
		return NULL;

	scrq->msgs =
		(union sub_crq *)FUNC0(GFP_KERNEL | __GFP_ZERO, 2);
	if (!scrq->msgs) {
		FUNC1(dev, "Couldn't allocate crq queue messages page\n");
		goto zero_page_failed;
	}

	scrq->msg_token = FUNC2(dev, scrq->msgs, 4 * PAGE_SIZE,
					 DMA_BIDIRECTIONAL);
	if (FUNC3(dev, scrq->msg_token)) {
		FUNC1(dev, "Couldn't map crq queue messages page\n");
		goto map_failed;
	}

	rc = FUNC6(adapter->vdev->unit_address, scrq->msg_token,
			   4 * PAGE_SIZE, &scrq->crq_num, &scrq->hw_irq);

	if (rc == H_RESOURCE)
		rc = FUNC7(adapter);

	if (rc == H_CLOSED) {
		FUNC1(dev, "Partner adapter not ready, waiting.\n");
	} else if (rc) {
		FUNC1(dev, "Error %d registering sub-crq\n", rc);
		goto reg_failed;
	}

	scrq->adapter = adapter;
	scrq->size = 4 * PAGE_SIZE / sizeof(*scrq->msgs);
	FUNC11(&scrq->lock);

	FUNC10(adapter->netdev,
		   "sub-crq initialized, num %lx, hw_irq=%lx, irq=%x\n",
		   scrq->crq_num, scrq->hw_irq, scrq->irq);

	return scrq;

reg_failed:
	FUNC4(dev, scrq->msg_token, 4 * PAGE_SIZE,
			 DMA_BIDIRECTIONAL);
map_failed:
	FUNC5((unsigned long)scrq->msgs, 2);
zero_page_failed:
	FUNC8(scrq);

	return NULL;
}