#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct urb {int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  status; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_MSG_SIZE_V1_20 ; 
 int /*<<< orphan*/  dib0700_rc_urb_completion ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC13(struct dvb_usb_device *d, struct usb_interface *intf)
{
	struct dib0700_state *st = d->priv;
	struct urb *purb;
	const struct usb_endpoint_descriptor *e;
	int ret, rc_ep = 1;
	unsigned int pipe = 0;

	/* Poll-based. Don't initialize bulk mode */
	if (st->fw_version < 0x10200 || !intf)
		return 0;

	/* Starting in firmware 1.20, the RC info is provided on a bulk pipe */

	if (intf->altsetting[0].desc.bNumEndpoints < rc_ep + 1)
		return -ENODEV;

	purb = FUNC3(0, GFP_KERNEL);
	if (purb == NULL)
		return -ENOMEM;

	purb->transfer_buffer = FUNC2(RC_MSG_SIZE_V1_20, GFP_KERNEL);
	if (purb->transfer_buffer == NULL) {
		FUNC0("rc kzalloc failed");
		FUNC9(purb);
		return -ENOMEM;
	}

	purb->status = -EINPROGRESS;

	/*
	 * Some devices like the Hauppauge NovaTD model 52009 use an interrupt
	 * endpoint, while others use a bulk one.
	 */
	e = &intf->altsetting[0].endpoint[rc_ep].desc;
	if (FUNC4(e)) {
		if (FUNC5(e)) {
			pipe = FUNC10(d->udev, rc_ep);
			FUNC7(purb, d->udev, pipe,
					  purb->transfer_buffer,
					  RC_MSG_SIZE_V1_20,
					  dib0700_rc_urb_completion, d);

		} else if (FUNC6(e)) {
			pipe = FUNC11(d->udev, rc_ep);
			FUNC8(purb, d->udev, pipe,
					  purb->transfer_buffer,
					  RC_MSG_SIZE_V1_20,
					  dib0700_rc_urb_completion, d, 1);
		}
	}

	if (!pipe) {
		FUNC0("There's no endpoint for remote controller");
		FUNC1(purb->transfer_buffer);
		FUNC9(purb);
		return 0;
	}

	ret = FUNC12(purb, GFP_ATOMIC);
	if (ret) {
		FUNC0("rc submit urb failed");
		FUNC1(purb->transfer_buffer);
		FUNC9(purb);
	}

	return ret;
}