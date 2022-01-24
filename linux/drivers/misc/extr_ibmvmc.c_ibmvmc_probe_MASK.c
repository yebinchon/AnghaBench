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
struct vio_device_id {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  unit_address; } ;
struct crq_server_adapter {int /*<<< orphan*/ * reset_task; int /*<<< orphan*/ * dev; int /*<<< orphan*/  reset_wait_queue; int /*<<< orphan*/  riobn; int /*<<< orphan*/  liobn; } ;
struct TYPE_2__ {void* state; } ;

/* Variables and functions */
 int EPERM ; 
 int H_RESOURCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct crq_server_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ ibmvmc ; 
 struct crq_server_adapter ibmvmc_adapter ; 
 int FUNC7 (struct crq_server_adapter*) ; 
 int /*<<< orphan*/  ibmvmc_reset_task ; 
 scalar_t__ FUNC8 (struct crq_server_adapter*,int,int /*<<< orphan*/ ) ; 
 void* ibmvmc_state_crqinit ; 
 void* ibmvmc_state_failed ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct crq_server_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct crq_server_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct vio_dev*,struct crq_server_adapter*) ; 

__attribute__((used)) static int FUNC14(struct vio_dev *vdev, const struct vio_device_id *id)
{
	struct crq_server_adapter *adapter = &ibmvmc_adapter;
	int rc;

	FUNC5(&vdev->dev, NULL);
	FUNC12(adapter, 0, sizeof(*adapter));
	adapter->dev = &vdev->dev;

	FUNC4(adapter->dev, "Probe for UA 0x%x\n", vdev->unit_address);

	rc = FUNC13(vdev, adapter);
	if (rc != 0) {
		ibmvmc.state = ibmvmc_state_failed;
		return -1;
	}

	FUNC2(adapter->dev, "Probe: liobn 0x%x, riobn 0x%x\n",
		adapter->liobn, adapter->riobn);

	FUNC9(&adapter->reset_wait_queue);
	adapter->reset_task = FUNC10(ibmvmc_reset_task, adapter, "ibmvmc");
	if (FUNC0(adapter->reset_task)) {
		FUNC3(adapter->dev, "Failed to start reset thread\n");
		ibmvmc.state = ibmvmc_state_failed;
		rc = FUNC1(adapter->reset_task);
		adapter->reset_task = NULL;
		return rc;
	}

	rc = FUNC7(adapter);
	if (rc != 0 && rc != H_RESOURCE) {
		FUNC3(adapter->dev, "Error initializing CRQ.  rc = 0x%x\n",
			rc);
		ibmvmc.state = ibmvmc_state_failed;
		goto crq_failed;
	}

	ibmvmc.state = ibmvmc_state_crqinit;

	/* Try to send an initialization message.  Note that this is allowed
	 * to fail if the other end is not acive.  In that case we just wait
	 * for the other side to initialize.
	 */
	if (FUNC8(adapter, 0xC001000000000000LL, 0) != 0 &&
	    rc != H_RESOURCE)
		FUNC6(adapter->dev, "Failed to send initialize CRQ message\n");

	FUNC5(&vdev->dev, adapter);

	return 0;

crq_failed:
	FUNC11(adapter->reset_task);
	adapter->reset_task = NULL;
	return -EPERM;
}