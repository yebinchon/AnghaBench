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
struct vxgedev {int no_of_vpath; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {scalar_t__ handle; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 int /*<<< orphan*/  VXGE_ERR ; 
 scalar_t__ VXGE_HW_OK ; 
 scalar_t__ FUNC0 (struct vxgedev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static enum vxge_hw_status FUNC4(struct vxgedev *vdev)
{
	enum vxge_hw_status status = VXGE_HW_OK;
	struct vxge_vpath *vpath;
	int i;

	for (i = 0; i < vdev->no_of_vpath; i++) {
		vpath = &vdev->vpaths[i];
		if (vpath->handle) {
			if (FUNC3(vpath->handle) == VXGE_HW_OK) {
				if (FUNC0(vdev) &&
					FUNC2(
						vpath->handle) != VXGE_HW_OK) {
					FUNC1(VXGE_ERR,
						"vxge_hw_vpath_recover_"
						"from_reset failed for vpath: "
						"%d", i);
					return status;
				}
			} else {
				FUNC1(VXGE_ERR,
					"vxge_hw_vpath_reset failed for "
					"vpath:%d", i);
				return status;
			}
		}
	}

	return status;
}