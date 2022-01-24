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
typedef  int v4l2_std_id ;
struct video_device {int tvnorms; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_std ) (struct file*,void*,int) ;} ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct file*,void*,int) ; 
 int FUNC1 (struct video_device*) ; 
 struct video_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct video_device *vfd = FUNC2(file);
	v4l2_std_id id = *(v4l2_std_id *)arg, norm;
	int ret;

	ret = FUNC1(vfd);
	if (ret)
		return ret;
	norm = id & vfd->tvnorms;
	if (vfd->tvnorms && !norm)	/* Check if std is supported */
		return -EINVAL;

	/* Calls the specific handler */
	return ops->vidioc_s_std(file, fh, norm);
}