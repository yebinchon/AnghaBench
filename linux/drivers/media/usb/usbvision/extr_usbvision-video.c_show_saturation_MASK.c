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
struct video_device {int dummy; } ;
struct usb_usbvision {int /*<<< orphan*/  hdl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct video_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_usbvision* FUNC4 (struct video_device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *cd,
			       struct device_attribute *attr, char *buf)
{
	struct video_device *vdev = FUNC1(cd);
	struct usb_usbvision *usbvision = FUNC4(vdev);
	s32 val = FUNC3(FUNC2(&usbvision->hdl,
						  V4L2_CID_SATURATION));

	return FUNC0(buf, "%d\n", val);
}