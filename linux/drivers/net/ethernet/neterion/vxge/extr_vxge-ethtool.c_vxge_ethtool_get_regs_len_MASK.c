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
struct vxgedev {int no_of_vpath; } ;
struct vxge_hw_vpath_reg {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct vxgedev* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev)
{
	struct vxgedev *vdev = FUNC0(dev);

	return sizeof(struct vxge_hw_vpath_reg) * vdev->no_of_vpath;
}