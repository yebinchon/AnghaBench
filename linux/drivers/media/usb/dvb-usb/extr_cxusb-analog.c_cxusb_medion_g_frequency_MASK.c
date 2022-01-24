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
struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int /*<<< orphan*/  tuner; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 struct dvb_usb_device* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				    struct v4l2_frequency *freq)
{
	struct dvb_usb_device *dvbdev = FUNC1(file);
	struct cxusb_medion_dev *cxdev = dvbdev->priv;

	if (freq->tuner != 0)
		return -EINVAL;

	return FUNC0(cxdev->tuner, tuner, g_frequency, freq);
}