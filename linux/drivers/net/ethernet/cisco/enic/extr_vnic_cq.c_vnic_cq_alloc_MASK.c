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
struct vnic_dev {int dummy; } ;
struct vnic_cq {unsigned int index; int /*<<< orphan*/  ring; int /*<<< orphan*/  ctrl; struct vnic_dev* vdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_TYPE_CQ ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_dev*,char*,unsigned int) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_dev*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct vnic_dev *vdev, struct vnic_cq *cq, unsigned int index,
	unsigned int desc_count, unsigned int desc_size)
{
	int err;

	cq->index = index;
	cq->vdev = vdev;

	cq->ctrl = FUNC2(vdev, RES_TYPE_CQ, index);
	if (!cq->ctrl) {
		FUNC0(vdev, "Failed to hook CQ[%d] resource\n", index);
		return -EINVAL;
	}

	err = FUNC1(vdev, &cq->ring, desc_count, desc_size);
	if (err)
		return err;

	return 0;
}