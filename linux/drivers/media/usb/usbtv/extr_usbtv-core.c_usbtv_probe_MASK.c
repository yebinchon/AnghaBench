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
struct usbtv {int iso_size; int /*<<< orphan*/  udev; int /*<<< orphan*/  v4l2_dev; struct device* dev; } ;
struct device {int dummy; } ;
struct usb_interface {int num_altsetting; TYPE_2__* altsetting; struct device dev; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct TYPE_4__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbtv*) ; 
 struct usbtv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,struct usbtv*) ; 
 int FUNC9 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbtv*) ; 
 int FUNC11 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct usb_interface *intf,
	const struct usb_device_id *id)
{
	int ret;
	int size;
	struct device *dev = &intf->dev;
	struct usbtv *usbtv;
	struct usb_host_endpoint *ep;

	/* Checks that the device is what we think it is. */
	if (intf->num_altsetting != 2)
		return -ENODEV;
	if (intf->altsetting[1].desc.bNumEndpoints != 4)
		return -ENODEV;

	ep = &intf->altsetting[1].endpoint[0];

	/* Packet size is split into 11 bits of base size and count of
	 * extra multiplies of it.*/
	size = FUNC4(&ep->desc);
	size = size * FUNC5(&ep->desc);

	/* Device structure */
	usbtv = FUNC3(sizeof(struct usbtv), GFP_KERNEL);
	if (usbtv == NULL)
		return -ENOMEM;
	usbtv->dev = dev;
	usbtv->udev = FUNC6(FUNC1(intf));

	usbtv->iso_size = size;

	FUNC8(intf, usbtv);

	ret = FUNC11(usbtv);
	if (ret < 0)
		goto usbtv_video_fail;

	ret = FUNC9(usbtv);
	if (ret < 0)
		goto usbtv_audio_fail;

	/* for simplicity we exploit the v4l2_device reference counting */
	FUNC12(&usbtv->v4l2_dev);

	FUNC0(dev, "Fushicai USBTV007 Audio-Video Grabber\n");
	return 0;

usbtv_audio_fail:
	/* we must not free at this point */
	FUNC6(usbtv->udev);
	FUNC10(usbtv);

usbtv_video_fail:
	FUNC8(intf, NULL);
	FUNC7(usbtv->udev);
	FUNC2(usbtv);

	return ret;
}