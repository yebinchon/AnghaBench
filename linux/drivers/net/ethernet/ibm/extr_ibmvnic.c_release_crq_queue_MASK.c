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
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  unit_address; int /*<<< orphan*/  irq; } ;
struct ibmvnic_crq_queue {int active; int /*<<< orphan*/ * msgs; int /*<<< orphan*/  msg_token; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  netdev; struct vio_dev* vdev; struct ibmvnic_crq_queue crq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 long H_BUSY ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ibmvnic_adapter *adapter)
{
	struct ibmvnic_crq_queue *crq = &adapter->crq;
	struct vio_dev *vdev = adapter->vdev;
	long rc;

	if (!crq->msgs)
		return;

	FUNC4(adapter->netdev, "Releasing CRQ\n");
	FUNC2(vdev->irq, adapter);
	FUNC6(&adapter->tasklet);
	do {
		rc = FUNC5(H_FREE_CRQ, vdev->unit_address);
	} while (rc == H_BUSY || FUNC0(rc));

	FUNC1(&vdev->dev, crq->msg_token, PAGE_SIZE,
			 DMA_BIDIRECTIONAL);
	FUNC3((unsigned long)crq->msgs);
	crq->msgs = NULL;
	crq->active = false;
}