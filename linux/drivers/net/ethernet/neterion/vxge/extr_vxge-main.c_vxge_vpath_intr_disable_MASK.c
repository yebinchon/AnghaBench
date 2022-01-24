#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ intr_type; } ;
struct vxgedev {TYPE_1__ config; int /*<<< orphan*/  pdev; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int device_id; TYPE_4__* handle; } ;
struct __vxge_hw_device {int dummy; } ;
struct TYPE_10__ {TYPE_3__* vpath; } ;
struct TYPE_9__ {TYPE_2__* hldev; } ;
struct TYPE_8__ {int first_vp_id; } ;

/* Variables and functions */
 scalar_t__ INTA ; 
 int VXGE_ALARM_MSIX_ID ; 
 int VXGE_HW_VPATH_MSIX_ACTIVE ; 
 struct __vxge_hw_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct __vxge_hw_device*,int) ; 

__attribute__((used)) static void FUNC5(struct vxgedev *vdev, int vp_id)
{
	struct vxge_vpath *vpath = &vdev->vpaths[vp_id];
	struct __vxge_hw_device *hldev;
	int msix_id;

	hldev = FUNC0(vdev->pdev);

	FUNC4(hldev, vpath->device_id);

	FUNC2(vpath->handle);

	if (vdev->config.intr_type == INTA)
		FUNC1(vpath->handle);
	else {
		msix_id = vpath->device_id * VXGE_HW_VPATH_MSIX_ACTIVE;
		FUNC3(vpath->handle, msix_id);
		FUNC3(vpath->handle, msix_id + 1);

		/* disable the alarm vector */
		msix_id = (vpath->handle->vpath->hldev->first_vp_id *
			VXGE_HW_VPATH_MSIX_ACTIVE) + VXGE_ALARM_MSIX_ID;
		FUNC3(vpath->handle, msix_id);
	}
}