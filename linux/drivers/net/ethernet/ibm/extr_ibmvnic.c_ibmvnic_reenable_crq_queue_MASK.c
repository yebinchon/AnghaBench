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
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  unit_address; } ;
struct ibmvnic_adapter {struct vio_dev* vdev; } ;

/* Variables and functions */
 int H_BUSY ; 
 int /*<<< orphan*/  H_ENABLE_CRQ ; 
 int H_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ibmvnic_adapter *adapter)
{
	struct vio_dev *vdev = adapter->vdev;
	int rc;

	do {
		rc = FUNC2(H_ENABLE_CRQ, vdev->unit_address);
	} while (rc == H_IN_PROGRESS || rc == H_BUSY || FUNC0(rc));

	if (rc)
		FUNC1(&vdev->dev, "Error enabling adapter (rc=%d)\n", rc);

	return rc;
}