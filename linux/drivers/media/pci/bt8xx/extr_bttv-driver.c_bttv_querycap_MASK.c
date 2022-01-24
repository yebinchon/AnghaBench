#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int capabilities; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_4__ {int /*<<< orphan*/  pci; } ;
struct TYPE_3__ {char* name; } ;
struct bttv {scalar_t__ tuner_type; scalar_t__ has_saa6588; scalar_t__ has_tea575x; int /*<<< orphan*/  radio_dev; int /*<<< orphan*/  vbi_dev; TYPE_2__ c; TYPE_1__ video_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TUNER_ABSENT ; 
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_HW_FREQ_SEEK ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_RDS_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OVERLAY ; 
 scalar_t__ no_overlay ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ v4l2 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct file *file, void  *priv,
				struct v4l2_capability *cap)
{
	struct bttv_fh *fh = priv;
	struct bttv *btv = fh->btv;

	if (0 == v4l2)
		return -EINVAL;

	FUNC2(cap->driver, "bttv", sizeof(cap->driver));
	FUNC2(cap->card, btv->video_dev.name, sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info),
		 "PCI:%s", FUNC0(btv->c.pci));
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
			    V4L2_CAP_STREAMING | V4L2_CAP_DEVICE_CAPS;
	if (no_overlay <= 0)
		cap->capabilities |= V4L2_CAP_VIDEO_OVERLAY;
	if (FUNC3(&btv->vbi_dev))
		cap->capabilities |= V4L2_CAP_VBI_CAPTURE;
	if (FUNC3(&btv->radio_dev)) {
		cap->capabilities |= V4L2_CAP_RADIO;
		if (btv->has_tea575x)
			cap->capabilities |= V4L2_CAP_HW_FREQ_SEEK;
	}

	/*
	 * No need to lock here: those vars are initialized during board
	 * probe and remains untouched during the rest of the driver lifecycle
	 */
	if (btv->has_saa6588)
		cap->capabilities |= V4L2_CAP_RDS_CAPTURE;
	if (btv->tuner_type != TUNER_ABSENT)
		cap->capabilities |= V4L2_CAP_TUNER;
	return 0;
}