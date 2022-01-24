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
struct file {int dummy; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPS ; 
 scalar_t__ VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 struct video_device* FUNC4 (struct file*) ; 
 struct dvb_usb_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *f)
{
	struct video_device *vdev = FUNC4(f);
	struct dvb_usb_device *dvbdev = FUNC5(f);
	int ret;

	FUNC1(dvbdev, OPS, "got release\n");

	if (vdev->vfl_type == VFL_TYPE_GRABBER)
		ret = FUNC3(f);
	else
		ret = FUNC2(f);

	FUNC0(dvbdev);

	return ret;
}