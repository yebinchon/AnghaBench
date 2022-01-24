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
struct vio_dev {int /*<<< orphan*/  unit_address; } ;
struct crq_queue {int /*<<< orphan*/  msg_token; scalar_t__ cur; int /*<<< orphan*/  msgs; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; struct crq_queue queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_REG_CRQ ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vio_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct crq_server_adapter *adapter)
{
	struct vio_dev *vdev = FUNC5(adapter->dev);
	struct crq_queue *queue = &adapter->queue;
	int rc = 0;

	/* Close the CRQ */
	FUNC2(vdev->unit_address);

	/* Clean out the queue */
	FUNC3(queue->msgs, 0x00, PAGE_SIZE);
	queue->cur = 0;

	/* And re-open it again */
	rc = FUNC4(H_REG_CRQ,
				vdev->unit_address,
				queue->msg_token, PAGE_SIZE);
	if (rc == 2)
		/* Adapter is good, but other end is not ready */
		FUNC1(adapter->dev, "Partner adapter not ready\n");
	else if (rc != 0)
		FUNC0(adapter->dev, "couldn't register crq--rc 0x%x\n", rc);

	return rc;
}