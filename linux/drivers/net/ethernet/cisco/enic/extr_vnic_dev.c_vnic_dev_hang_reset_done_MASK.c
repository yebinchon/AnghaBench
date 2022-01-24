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
typedef  scalar_t__ u64 ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_HANG_RESET_STATUS ; 
 scalar_t__ FUNC0 (struct vnic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int FUNC2 (struct vnic_dev*,int*) ; 

int FUNC3(struct vnic_dev *vdev, int *done)
{
	u64 a0 = 0, a1 = 0;
	int wait = 1000;
	int err;

	*done = 0;

	if (FUNC0(vdev, CMD_HANG_RESET_STATUS)) {
		err = FUNC1(vdev, CMD_HANG_RESET_STATUS,
				&a0, &a1, wait);
		if (err)
			return err;
	} else {
		return FUNC2(vdev, done);
	}

	*done = (a0 == 0);

	return 0;
}