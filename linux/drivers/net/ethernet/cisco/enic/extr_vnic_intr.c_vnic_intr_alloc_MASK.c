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
struct vnic_intr {unsigned int index; int /*<<< orphan*/  ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_TYPE_INTR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_dev*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct vnic_dev *vdev, struct vnic_intr *intr,
	unsigned int index)
{
	intr->index = index;
	intr->vdev = vdev;

	intr->ctrl = FUNC1(vdev, RES_TYPE_INTR_CTRL, index);
	if (!intr->ctrl) {
		FUNC0(vdev, "Failed to hook INTR[%d].ctrl resource\n",
			 index);
		return -EINVAL;
	}

	return 0;
}