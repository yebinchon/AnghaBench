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
struct v4l2_ioctl_ops {int (* vidioc_prepare_buf ) (struct file*,void*,struct v4l2_buffer*) ;} ;
struct v4l2_buffer {int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,void*,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC2(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct v4l2_buffer *b = arg;
	int ret = FUNC0(file, b->type);

	return ret ? ret : ops->vidioc_prepare_buf(file, fh, b);
}