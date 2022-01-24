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
typedef  int /*<<< orphan*/  u16 ;
struct vxgedev {int no_of_vpath; int /*<<< orphan*/  active_vlans; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int /*<<< orphan*/  handle; int /*<<< orphan*/  is_open; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct vxgedev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev, __be16 proto, u16 vid)
{
	struct vxgedev *vdev = FUNC0(dev);
	struct vxge_vpath *vpath;
	int vp_id;

	/* Add these vlan to the vid table */
	for (vp_id = 0; vp_id < vdev->no_of_vpath; vp_id++) {
		vpath = &vdev->vpaths[vp_id];
		if (!vpath->is_open)
			continue;
		FUNC2(vpath->handle, vid);
	}
	FUNC1(vid, vdev->active_vlans);
	return 0;
}