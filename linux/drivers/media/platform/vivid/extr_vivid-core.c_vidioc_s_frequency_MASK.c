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
struct vivid_dev {int /*<<< orphan*/  radio_tx_freq; int /*<<< orphan*/  radio_rx_freq; } ;
struct video_device {scalar_t__ vfl_type; scalar_t__ vfl_dir; } ;
struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ VFL_DIR_RX ; 
 scalar_t__ VFL_TYPE_RADIO ; 
 scalar_t__ VFL_TYPE_SDR ; 
 struct video_device* FUNC0 (struct file*) ; 
 struct vivid_dev* FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ *,struct v4l2_frequency const*) ; 
 int FUNC3 (struct file*,void*,struct v4l2_frequency const*) ; 
 int FUNC4 (struct file*,void*,struct v4l2_frequency const*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh, const struct v4l2_frequency *vf)
{
	struct vivid_dev *dev = FUNC1(file);
	struct video_device *vdev = FUNC0(file);

	if (vdev->vfl_type == VFL_TYPE_RADIO)
		return FUNC2(file,
			vdev->vfl_dir == VFL_DIR_RX ?
			&dev->radio_rx_freq : &dev->radio_tx_freq, vf);
	if (vdev->vfl_type == VFL_TYPE_SDR)
		return FUNC3(file, fh, vf);
	return FUNC4(file, fh, vf);
}