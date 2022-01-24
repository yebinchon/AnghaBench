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
struct video_device {int dev_debug; TYPE_1__* fops; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct file*,struct poll_table_struct*) ;} ;

/* Variables and functions */
 int DEFAULT_POLLMASK ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int V4L2_DEV_DEBUG_POLL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct file*,struct poll_table_struct*) ; 
 struct video_device* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*) ; 
 scalar_t__ FUNC4 (struct video_device*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *filp, struct poll_table_struct *poll)
{
	struct video_device *vdev = FUNC2(filp);
	__poll_t res = EPOLLERR | EPOLLHUP;

	if (!vdev->fops->poll)
		return DEFAULT_POLLMASK;
	if (FUNC4(vdev))
		res = vdev->fops->poll(filp, poll);
	if (vdev->dev_debug & V4L2_DEV_DEBUG_POLL)
		FUNC0("%s: poll: %08x\n",
			FUNC3(vdev), res);
	return res;
}