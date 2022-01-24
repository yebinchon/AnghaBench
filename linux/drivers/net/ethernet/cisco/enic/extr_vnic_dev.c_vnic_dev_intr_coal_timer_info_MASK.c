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
typedef  void* u32 ;
struct TYPE_2__ {void* max_usec; void* div; void* mul; } ;
struct vnic_dev {int (* devcmd_rtn ) (struct vnic_dev*,int /*<<< orphan*/ ,int) ;scalar_t__* args; TYPE_1__ intr_coal_timer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INTR_COAL_CONVERT ; 
 int ERR_ECMDUNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_dev*,char*) ; 
 scalar_t__ FUNC3 (struct vnic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnic_dev*) ; 

int FUNC5(struct vnic_dev *vdev)
{
	int wait = 1000;
	int err;

	FUNC0(vdev->args, 0, sizeof(vdev->args));

	if (FUNC3(vdev, CMD_INTR_COAL_CONVERT))
		err = vdev->devcmd_rtn(vdev, CMD_INTR_COAL_CONVERT, wait);
	else
		err = ERR_ECMDUNKNOWN;

	/* Use defaults when firmware doesn't support the devcmd at all or
	 * supports it for only specific hardware
	 */
	if ((err == ERR_ECMDUNKNOWN) ||
		(!err && !(vdev->args[0] && vdev->args[1] && vdev->args[2]))) {
		FUNC2(vdev, "Using default conversion factor for interrupt coalesce timer\n");
		FUNC4(vdev);
		return 0;
	}

	if (!err) {
		vdev->intr_coal_timer_info.mul = (u32) vdev->args[0];
		vdev->intr_coal_timer_info.div = (u32) vdev->args[1];
		vdev->intr_coal_timer_info.max_usec = (u32) vdev->args[2];
	}

	return err;
}