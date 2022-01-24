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
struct usb_usbvision {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct video_device* FUNC0 (struct device*) ; 
 struct usb_usbvision* FUNC1 (struct video_device*) ; 

__attribute__((used)) static inline struct usb_usbvision *FUNC2(struct device *cd)
{
	struct video_device *vdev = FUNC0(cd);
	return FUNC1(vdev);
}