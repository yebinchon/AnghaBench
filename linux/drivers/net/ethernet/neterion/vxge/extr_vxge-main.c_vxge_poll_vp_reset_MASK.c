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
struct TYPE_2__ {scalar_t__ intr_type; } ;
struct vxgedev {int no_of_vpath; int /*<<< orphan*/  vp_reset_timer; int /*<<< orphan*/  devh; TYPE_1__ config; int /*<<< orphan*/  vp_reset; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ MSI_X ; 
 struct vxgedev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct vxgedev* vdev ; 
 int /*<<< orphan*/  vp_reset_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vxgedev*,int) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct vxgedev *vdev = FUNC0(vdev, t, vp_reset_timer);
	int i, j = 0;

	for (i = 0; i < vdev->no_of_vpath; i++) {
		if (FUNC2(i, &vdev->vp_reset)) {
			FUNC5(vdev, i);
			j++;
		}
	}
	if (j && (vdev->config.intr_type != MSI_X)) {
		FUNC4(vdev->devh);
		FUNC3(vdev->devh);
	}

	FUNC1(&vdev->vp_reset_timer, jiffies + HZ / 2);
}