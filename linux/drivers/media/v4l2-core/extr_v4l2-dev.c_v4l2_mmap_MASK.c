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
struct vm_area_struct {int dummy; } ;
struct video_device {int dev_debug; TYPE_1__* fops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int V4L2_DEV_DEBUG_FOP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 struct video_device* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*) ; 
 scalar_t__ FUNC4 (struct video_device*) ; 

__attribute__((used)) static int FUNC5(struct file *filp, struct vm_area_struct *vm)
{
	struct video_device *vdev = FUNC2(filp);
	int ret = -ENODEV;

	if (!vdev->fops->mmap)
		return -ENODEV;
	if (FUNC4(vdev))
		ret = vdev->fops->mmap(filp, vm);
	if (vdev->dev_debug & V4L2_DEV_DEBUG_FOP)
		FUNC0("%s: mmap (%d)\n",
			FUNC3(vdev), ret);
	return ret;
}