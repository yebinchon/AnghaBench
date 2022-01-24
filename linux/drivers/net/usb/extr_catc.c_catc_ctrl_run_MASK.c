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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; } ;
struct urb {struct usb_device* dev; void* setup_packet; int /*<<< orphan*/  transfer_buffer; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  pipe; } ;
struct ctrl_queue {int dir; scalar_t__ len; scalar_t__ buf; scalar_t__ index; scalar_t__ value; int /*<<< orphan*/  request; } ;
struct catc {int ctrl_tail; struct usb_device* usbdev; struct urb* ctrl_urb; int /*<<< orphan*/  ctrl_buf; struct usb_ctrlrequest ctrl_dr; struct ctrl_queue* ctrl_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct catc *catc)
{
	struct ctrl_queue *q = catc->ctrl_queue + catc->ctrl_tail;
	struct usb_device *usbdev = catc->usbdev;
	struct urb *urb = catc->ctrl_urb;
	struct usb_ctrlrequest *dr = &catc->ctrl_dr;
	int status;

	dr->bRequest = q->request;
	dr->bRequestType = 0x40 | q->dir;
	dr->wValue = FUNC0(q->value);
	dr->wIndex = FUNC0(q->index);
	dr->wLength = FUNC0(q->len);

        urb->pipe = q->dir ? FUNC3(usbdev, 0) : FUNC4(usbdev, 0);
	urb->transfer_buffer_length = q->len;
	urb->transfer_buffer = catc->ctrl_buf;
	urb->setup_packet = (void *) dr;
	urb->dev = usbdev;

	if (!q->dir && q->buf && q->len)
		FUNC2(catc->ctrl_buf, q->buf, q->len);

	if ((status = FUNC5(catc->ctrl_urb, GFP_ATOMIC)))
		FUNC1(&catc->usbdev->dev, "submit(ctrl_urb) status %d\n",
			status);
}