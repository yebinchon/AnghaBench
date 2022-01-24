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
struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_frequency_band {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ VFL_TYPE_RADIO ; 
 scalar_t__ VFL_TYPE_SDR ; 
 struct video_device* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,void*,struct v4l2_frequency_band*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_frequency_band*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_frequency_band *band)
{
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_type == VFL_TYPE_RADIO)
		return FUNC1(file, fh, band);
	if (vdev->vfl_type == VFL_TYPE_SDR)
		return FUNC2(file, fh, band);
	return -ENOTTY;
}