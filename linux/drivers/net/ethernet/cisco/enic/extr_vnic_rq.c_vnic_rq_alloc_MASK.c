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
struct vnic_rq {unsigned int index; int /*<<< orphan*/  ring; int /*<<< orphan*/  ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_dev*,char*,unsigned int) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct vnic_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnic_rq*) ; 

int FUNC6(struct vnic_dev *vdev, struct vnic_rq *rq, unsigned int index,
	unsigned int desc_count, unsigned int desc_size)
{
	int err;

	rq->index = index;
	rq->vdev = vdev;

	rq->ctrl = FUNC2(vdev, RES_TYPE_RQ, index);
	if (!rq->ctrl) {
		FUNC0(vdev, "Failed to hook RQ[%d] resource\n", index);
		return -EINVAL;
	}

	FUNC4(rq);

	err = FUNC1(vdev, &rq->ring, desc_count, desc_size);
	if (err)
		return err;

	err = FUNC3(rq);
	if (err) {
		FUNC5(rq);
		return err;
	}

	return 0;
}