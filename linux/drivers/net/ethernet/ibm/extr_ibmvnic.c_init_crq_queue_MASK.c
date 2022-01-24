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
typedef  union ibmvnic_crq {int dummy; } ibmvnic_crq ;
struct device {int dummy; } ;
struct vio_dev {int unit_address; int /*<<< orphan*/  irq; struct device dev; } ;
struct ibmvnic_crq_queue {int size; union ibmvnic_crq* msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  lock; scalar_t__ cur; int /*<<< orphan*/  name; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  tasklet; struct vio_dev* vdev; int /*<<< orphan*/  netdev; struct ibmvnic_crq_queue crq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 int H_CLOSED ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  H_REG_CRQ ; 
 int H_RESOURCE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,union ibmvnic_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvnic_interrupt ; 
 int FUNC8 (struct ibmvnic_adapter*) ; 
 scalar_t__ ibmvnic_tasklet ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC17(struct ibmvnic_adapter *adapter)
{
	struct ibmvnic_crq_queue *crq = &adapter->crq;
	struct device *dev = &adapter->vdev->dev;
	struct vio_dev *vdev = adapter->vdev;
	int rc, retrc = -ENOMEM;

	if (crq->msgs)
		return 0;

	crq->msgs = (union ibmvnic_crq *)FUNC7(GFP_KERNEL);
	/* Should we allocate more than one page? */

	if (!crq->msgs)
		return -ENOMEM;

	crq->size = PAGE_SIZE / sizeof(*crq->msgs);
	crq->msg_token = FUNC3(dev, crq->msgs, PAGE_SIZE,
					DMA_BIDIRECTIONAL);
	if (FUNC4(dev, crq->msg_token))
		goto map_failed;

	rc = FUNC10(H_REG_CRQ, vdev->unit_address,
				crq->msg_token, PAGE_SIZE);

	if (rc == H_RESOURCE)
		/* maybe kexecing and resource is busy. try a reset */
		rc = FUNC8(adapter);
	retrc = rc;

	if (rc == H_CLOSED) {
		FUNC2(dev, "Partner adapter not ready\n");
	} else if (rc) {
		FUNC2(dev, "Error %d opening adapter\n", rc);
		goto reg_crq_failed;
	}

	retrc = 0;

	FUNC14(&adapter->tasklet, (void *)ibmvnic_tasklet,
		     (unsigned long)adapter);

	FUNC9(adapter->netdev, "registering irq 0x%x\n", vdev->irq);
	FUNC12(crq->name, sizeof(crq->name), "ibmvnic-%x",
		 adapter->vdev->unit_address);
	rc = FUNC11(vdev->irq, ibmvnic_interrupt, 0, crq->name, adapter);
	if (rc) {
		FUNC1(dev, "Couldn't register irq 0x%x. rc=%d\n",
			vdev->irq, rc);
		goto req_irq_failed;
	}

	rc = FUNC16(vdev);
	if (rc) {
		FUNC1(dev, "Error %d enabling interrupts\n", rc);
		goto req_irq_failed;
	}

	crq->cur = 0;
	FUNC13(&crq->lock);

	return retrc;

req_irq_failed:
	FUNC15(&adapter->tasklet);
	do {
		rc = FUNC10(H_FREE_CRQ, vdev->unit_address);
	} while (rc == H_BUSY || FUNC0(rc));
reg_crq_failed:
	FUNC5(dev, crq->msg_token, PAGE_SIZE, DMA_BIDIRECTIONAL);
map_failed:
	FUNC6((unsigned long)crq->msgs);
	crq->msgs = NULL;
	return retrc;
}