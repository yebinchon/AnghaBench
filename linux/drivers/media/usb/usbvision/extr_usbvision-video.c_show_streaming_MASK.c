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
struct usb_usbvision {scalar_t__ streaming; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ stream_on ; 
 struct video_device* FUNC2 (struct device*) ; 
 struct usb_usbvision* FUNC3 (struct video_device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *cd,
			      struct device_attribute *attr, char *buf)
{
	struct video_device *vdev = FUNC2(cd);
	struct usb_usbvision *usbvision = FUNC3(vdev);
	return FUNC1(buf, "%s\n",
		       FUNC0(usbvision->streaming == stream_on ? 1 : 0));
}