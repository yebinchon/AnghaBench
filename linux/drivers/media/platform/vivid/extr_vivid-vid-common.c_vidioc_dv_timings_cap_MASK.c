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
struct vivid_dev {int dummy; } ;
struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ VFL_DIR_RX ; 
 struct video_device* FUNC0 (struct file*) ; 
 struct vivid_dev* FUNC1 (struct file*) ; 
 struct v4l2_dv_timings_cap vivid_dv_timings_cap ; 
 int /*<<< orphan*/  FUNC2 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vivid_dev*) ; 

int FUNC4(struct file *file, void *_fh,
				    struct v4l2_dv_timings_cap *cap)
{
	struct vivid_dev *dev = FUNC1(file);
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_dir == VFL_DIR_RX) {
		if (!FUNC2(dev))
			return -ENODATA;
	} else {
		if (!FUNC3(dev))
			return -ENODATA;
	}
	*cap = vivid_dv_timings_cap;
	return 0;
}