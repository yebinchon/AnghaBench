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
typedef  struct v4l2_frequency {scalar_t__ type; int /*<<< orphan*/  frequency; scalar_t__ tuner; } const v4l2_frequency ;
struct usb_usbvision {int /*<<< orphan*/  tv_freq; int /*<<< orphan*/  radio_freq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 struct usb_usbvision* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				const struct v4l2_frequency *freq)
{
	struct usb_usbvision *usbvision = FUNC1(file);
	struct v4l2_frequency new_freq = *freq;

	/* Only one tuner for now */
	if (freq->tuner)
		return -EINVAL;

	FUNC0(usbvision, tuner, s_frequency, freq);
	FUNC0(usbvision, tuner, g_frequency, &new_freq);
	if (freq->type == V4L2_TUNER_RADIO)
		usbvision->radio_freq = new_freq.frequency;
	else
		usbvision->tv_freq = new_freq.frequency;

	return 0;
}