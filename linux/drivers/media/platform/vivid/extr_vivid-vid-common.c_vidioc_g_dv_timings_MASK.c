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
struct v4l2_dv_timings {int dummy; } ;
struct vivid_dev {size_t input; struct v4l2_dv_timings dv_timings_out; struct v4l2_dv_timings* dv_timings_cap; } ;
struct video_device {scalar_t__ vfl_dir; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ VFL_DIR_RX ; 
 struct video_device* FUNC0 (struct file*) ; 
 struct vivid_dev* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vivid_dev*) ; 

int FUNC4(struct file *file, void *_fh,
				    struct v4l2_dv_timings *timings)
{
	struct vivid_dev *dev = FUNC1(file);
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_dir == VFL_DIR_RX) {
		if (!FUNC2(dev))
			return -ENODATA;
		*timings = dev->dv_timings_cap[dev->input];
	} else {
		if (!FUNC3(dev))
			return -ENODATA;
		*timings = dev->dv_timings_out;
	}
	return 0;
}