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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct urb {int dummy; } ;
struct imon_context {scalar_t__ display_type; int dev_present_intf1; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  usbdev_intf1; int /*<<< orphan*/ * touch; struct urb* rx_urb_intf1; TYPE_1__* rx_endpoint_intf1; int /*<<< orphan*/  usb_rx_buf; int /*<<< orphan*/  ttimer; } ;
struct TYPE_2__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMON_DISPLAY_TYPE_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imon_context*,struct usb_host_interface*) ; 
 int /*<<< orphan*/ * FUNC2 (struct imon_context*) ; 
 int /*<<< orphan*/  imon_touch_display_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct imon_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_rx_callback_intf1 ; 
 int FUNC15 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct imon_context *FUNC16(struct usb_interface *intf,
					    struct imon_context *ictx)
{
	struct urb *rx_urb;
	struct usb_host_interface *iface_desc;
	int ret = -ENOMEM;

	rx_urb = FUNC9(0, GFP_KERNEL);
	if (!rx_urb)
		goto rx_urb_alloc_failed;

	FUNC5(&ictx->lock);

	if (ictx->display_type == IMON_DISPLAY_TYPE_VGA) {
		FUNC8(&ictx->ttimer, imon_touch_display_timeout, 0);
	}

	ictx->usbdev_intf1 = FUNC12(FUNC4(intf));
	ictx->rx_urb_intf1 = rx_urb;

	ret = -ENODEV;
	iface_desc = intf->cur_altsetting;
	if (!FUNC1(ictx, iface_desc))
		goto find_endpoint_failed;

	if (ictx->display_type == IMON_DISPLAY_TYPE_VGA) {
		ictx->touch = FUNC2(ictx);
		if (!ictx->touch)
			goto touch_setup_failed;
	} else
		ictx->touch = NULL;

	FUNC10(ictx->rx_urb_intf1, ictx->usbdev_intf1,
		FUNC14(ictx->usbdev_intf1,
			ictx->rx_endpoint_intf1->bEndpointAddress),
		ictx->usb_rx_buf, sizeof(ictx->usb_rx_buf),
		usb_rx_callback_intf1, ictx,
		ictx->rx_endpoint_intf1->bInterval);

	ret = FUNC15(ictx->rx_urb_intf1, GFP_KERNEL);

	if (ret) {
		FUNC7("usb_submit_urb failed for intf1 (%d)\n", ret);
		goto urb_submit_failed;
	}

	ictx->dev_present_intf1 = true;

	FUNC6(&ictx->lock);
	return ictx;

urb_submit_failed:
	if (ictx->touch)
		FUNC3(ictx->touch);
touch_setup_failed:
find_endpoint_failed:
	FUNC13(ictx->usbdev_intf1);
	FUNC6(&ictx->lock);
	FUNC11(rx_urb);
rx_urb_alloc_failed:
	FUNC0(ictx->dev, "unable to initialize intf1, err %d\n", ret);

	return NULL;
}