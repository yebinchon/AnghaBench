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
struct vio_dev {int irq; int /*<<< orphan*/  unit_address; } ;
struct ibmvmc_crq_msg {int dummy; } ;
struct crq_queue {int size; struct ibmvmc_crq_msg* msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  lock; scalar_t__ cur; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  work_task; struct crq_queue queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_REG_CRQ ; 
 int H_RESOURCE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ibmvmc_crq_msg*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvmc_handle_event ; 
 int FUNC8 (struct crq_server_adapter*) ; 
 int /*<<< orphan*/  ibmvmc_task ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC16(struct crq_server_adapter *adapter)
{
	struct vio_dev *vdev = FUNC14(adapter->dev);
	struct crq_queue *queue = &adapter->queue;
	int rc = 0;
	int retrc = 0;

	queue->msgs = (struct ibmvmc_crq_msg *)FUNC6(GFP_KERNEL);

	if (!queue->msgs)
		goto malloc_failed;

	queue->size = PAGE_SIZE / sizeof(*queue->msgs);

	queue->msg_token = FUNC2(adapter->dev, queue->msgs,
					  queue->size * sizeof(*queue->msgs),
					  DMA_BIDIRECTIONAL);

	if (FUNC3(adapter->dev, queue->msg_token))
		goto map_failed;

	retrc = FUNC9(H_REG_CRQ,
				   vdev->unit_address,
				   queue->msg_token, PAGE_SIZE);
	rc = retrc;

	if (rc == H_RESOURCE)
		rc = FUNC8(adapter);

	if (rc == 2) {
		FUNC1(adapter->dev, "Partner adapter not ready\n");
		retrc = 0;
	} else if (rc != 0) {
		FUNC0(adapter->dev, "Error %d opening adapter\n", rc);
		goto reg_crq_failed;
	}

	queue->cur = 0;
	FUNC11(&queue->lock);

	FUNC12(&adapter->work_task, ibmvmc_task, (unsigned long)adapter);

	if (FUNC10(vdev->irq,
			ibmvmc_handle_event,
			0, "ibmvmc", (void *)adapter) != 0) {
		FUNC0(adapter->dev, "couldn't register irq 0x%x\n",
			vdev->irq);
		goto req_irq_failed;
	}

	rc = FUNC15(vdev);
	if (rc != 0) {
		FUNC0(adapter->dev, "Error %d enabling interrupts!!!\n", rc);
		goto req_irq_failed;
	}

	return retrc;

req_irq_failed:
	/* Cannot have any work since we either never got our IRQ registered,
	 * or never got interrupts enabled
	 */
	FUNC13(&adapter->work_task);
	FUNC7(vdev->unit_address);
reg_crq_failed:
	FUNC4(adapter->dev,
			 queue->msg_token,
			 queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
map_failed:
	FUNC5((unsigned long)queue->msgs);
malloc_failed:
	return -ENOMEM;
}