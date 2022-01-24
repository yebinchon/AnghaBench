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
struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ VFL_DIR_RX ; 
 struct video_device* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,void*,struct v4l2_streamparm*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
			  struct v4l2_streamparm *parm)
{
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_dir == VFL_DIR_RX)
		return FUNC1(file, fh, parm);
	return -ENOTTY;
}