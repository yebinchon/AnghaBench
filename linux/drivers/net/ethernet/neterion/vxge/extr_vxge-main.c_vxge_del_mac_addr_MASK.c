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
struct vxgedev {struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int /*<<< orphan*/  device_id; int /*<<< orphan*/  handle; } ;
struct macInfo {size_t vpath_no; int /*<<< orphan*/  macmask; int /*<<< orphan*/  macaddr; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 int /*<<< orphan*/  VXGE_ERR ; 
 int VXGE_HW_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxge_vpath*,struct macInfo*) ; 

__attribute__((used)) static enum vxge_hw_status
FUNC3(struct vxgedev *vdev, struct macInfo *mac)
{
	enum vxge_hw_status status = VXGE_HW_OK;
	struct vxge_vpath *vpath;

	vpath = &vdev->vpaths[mac->vpath_no];
	status = FUNC1(vpath->handle, mac->macaddr,
						mac->macmask);
	if (status != VXGE_HW_OK) {
		FUNC0(VXGE_ERR,
			"DA config delete entry failed for vpath:%d",
			vpath->device_id);
	} else
		FUNC2(vpath, mac);
	return status;
}