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
struct ibmvnic_sub_crq_queue {scalar_t__ msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  crq_num; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 long H_BUSY ; 
 int /*<<< orphan*/  H_FREE_SUB_CRQ ; 
 scalar_t__ FUNC0 (long) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_sub_crq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ibmvnic_adapter *adapter,
				  struct ibmvnic_sub_crq_queue *scrq,
				  bool do_h_free)
{
	struct device *dev = &adapter->vdev->dev;
	long rc;

	FUNC4(adapter->netdev, "Releasing sub-CRQ\n");

	if (do_h_free) {
		/* Close the sub-crqs */
		do {
			rc = FUNC6(H_FREE_SUB_CRQ,
						adapter->vdev->unit_address,
						scrq->crq_num);
		} while (rc == H_BUSY || FUNC0(rc));

		if (rc) {
			FUNC5(adapter->netdev,
				   "Failed to release sub-CRQ %16lx, rc = %ld\n",
				   scrq->crq_num, rc);
		}
	}

	FUNC1(dev, scrq->msg_token, 4 * PAGE_SIZE,
			 DMA_BIDIRECTIONAL);
	FUNC2((unsigned long)scrq->msgs, 2);
	FUNC3(scrq);
}