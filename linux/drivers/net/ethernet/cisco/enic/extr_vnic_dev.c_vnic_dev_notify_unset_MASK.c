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
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {int /*<<< orphan*/  notify_pa; scalar_t__ notify; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnic_dev*) ; 

int FUNC2(struct vnic_dev *vdev)
{
	if (vdev->notify) {
		FUNC0(vdev->pdev,
			sizeof(struct vnic_devcmd_notify),
			vdev->notify,
			vdev->notify_pa);
	}

	return FUNC1(vdev);
}