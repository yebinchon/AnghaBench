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
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct usb_usbvision {scalar_t__ streaming; int /*<<< orphan*/ * cur_frame; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ stream_on ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_usbvision*) ; 
 struct usb_usbvision* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
			       struct v4l2_format *vf)
{
	struct usb_usbvision *usbvision = FUNC4(file);
	int ret;

	ret = FUNC5(file, priv, vf);
	if (ret)
		return ret;

	/* stop io in case it is already in progress */
	if (usbvision->streaming == stream_on) {
		ret = FUNC3(usbvision);
		if (ret)
			return ret;
	}
	FUNC1(usbvision);
	FUNC0(usbvision);

	usbvision->cur_frame = NULL;

	/* by now we are committed to the new data... */
	FUNC2(usbvision, vf->fmt.pix.width, vf->fmt.pix.height);

	return 0;
}