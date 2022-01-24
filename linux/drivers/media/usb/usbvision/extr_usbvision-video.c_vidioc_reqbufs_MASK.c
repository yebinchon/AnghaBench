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
struct v4l2_requestbuffers {scalar_t__ memory; int /*<<< orphan*/  count; } ;
struct usb_usbvision {scalar_t__ streaming; int /*<<< orphan*/ * cur_frame; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBVISION_NUMFRAMES ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 scalar_t__ stream_on ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_usbvision*) ; 
 int FUNC4 (struct usb_usbvision*) ; 
 struct usb_usbvision* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file,
			   void *priv, struct v4l2_requestbuffers *vr)
{
	struct usb_usbvision *usbvision = FUNC5(file);
	int ret;

	FUNC0(vr->count, 1, USBVISION_NUMFRAMES);

	/* Check input validity:
	   the user must do a VIDEO CAPTURE and MMAP method. */
	if (vr->memory != V4L2_MEMORY_MMAP)
		return -EINVAL;

	if (usbvision->streaming == stream_on) {
		ret = FUNC4(usbvision);
		if (ret)
			return ret;
	}

	FUNC3(usbvision);
	FUNC1(usbvision);
	vr->count = FUNC2(usbvision, vr->count);

	usbvision->cur_frame = NULL;

	return 0;
}