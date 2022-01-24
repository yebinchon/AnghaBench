#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct lme2510_state {TYPE_1__* lme_urb; int /*<<< orphan*/  int_buffer; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ USB_ENDPOINT_XFER_BULK ; 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct lme2510_state* FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  lme2510_int_response ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dvb_usb_adapter*,int) ; 
 struct usb_host_endpoint* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct lme2510_state *lme_int = FUNC1(adap);
	struct usb_host_endpoint *ep;

	lme_int->lme_urb = FUNC3(0, GFP_ATOMIC);

	if (lme_int->lme_urb == NULL)
			return -ENOMEM;

	FUNC5(lme_int->lme_urb,
			 d->udev,
			 FUNC8(d->udev, 0xa),
			 lme_int->int_buffer,
			 sizeof(lme_int->int_buffer),
			 lme2510_int_response,
			 adap,
			 8);

	/* Quirk of pipe reporting PIPE_BULK but behaves as interrupt */
	ep = FUNC6(d->udev, lme_int->lme_urb->pipe);

	if (FUNC4(&ep->desc) == USB_ENDPOINT_XFER_BULK)
		lme_int->lme_urb->pipe = FUNC7(d->udev, 0xa),

	FUNC9(lme_int->lme_urb, GFP_ATOMIC);
	FUNC2("INT Interrupt Service Started");

	return 0;
}