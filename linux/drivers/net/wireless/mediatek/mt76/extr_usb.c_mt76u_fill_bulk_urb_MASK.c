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
typedef  int /*<<< orphan*/  usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; void* context; int /*<<< orphan*/  complete; struct usb_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * out_ep; int /*<<< orphan*/ * in_ep; } ;
struct mt76_dev {TYPE_1__ usb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mt76_dev *dev, int dir, int index,
		    struct urb *urb, usb_complete_t complete_fn,
		    void *context)
{
	struct usb_device *udev = FUNC0(dev->dev);
	unsigned int pipe;

	if (dir == USB_DIR_IN)
		pipe = FUNC1(udev, dev->usb.in_ep[index]);
	else
		pipe = FUNC2(udev, dev->usb.out_ep[index]);

	urb->dev = udev;
	urb->pipe = pipe;
	urb->complete = complete_fn;
	urb->context = context;
}