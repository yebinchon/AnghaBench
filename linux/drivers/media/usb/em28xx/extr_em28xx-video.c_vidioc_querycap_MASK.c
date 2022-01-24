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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct usb_device {int dummy; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int /*<<< orphan*/  radio_dev; int /*<<< orphan*/  vbi_dev; } ;
struct em28xx {size_t model; scalar_t__ int_audio_type; scalar_t__ tuner_type; int /*<<< orphan*/  intf; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ EM28XX_INT_AUDIO_NONE ; 
 scalar_t__ TUNER_ABSENT ; 
 int V4L2_CAP_AUDIO ; 
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 TYPE_1__* em28xx_boards ; 
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 struct em28xx* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file, void  *priv,
			   struct v4l2_capability *cap)
{
	struct em28xx         *dev  = FUNC3(file);
	struct em28xx_v4l2    *v4l2 = dev->v4l2;
	struct usb_device *udev = FUNC0(dev->intf);

	FUNC1(cap->driver, "em28xx", sizeof(cap->driver));
	FUNC1(cap->card, em28xx_boards[dev->model].name, sizeof(cap->card));
	FUNC2(udev, cap->bus_info, sizeof(cap->bus_info));

	cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_READWRITE |
			    V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
	if (dev->int_audio_type != EM28XX_INT_AUDIO_NONE)
		cap->capabilities |= V4L2_CAP_AUDIO;
	if (dev->tuner_type != TUNER_ABSENT)
		cap->capabilities |= V4L2_CAP_TUNER;
	if (FUNC4(&v4l2->vbi_dev))
		cap->capabilities |= V4L2_CAP_VBI_CAPTURE;
	if (FUNC4(&v4l2->radio_dev))
		cap->capabilities |= V4L2_CAP_RADIO;
	return 0;
}