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
struct TYPE_2__ {int /*<<< orphan*/  (* priv_destroy ) (struct dvb_usb_device*) ;} ;
struct dvb_usb_device {struct dvb_usb_device* priv; TYPE_1__ props; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_USB_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *d)
{
	FUNC0("state before exiting everything: %x\n", d->state);
	FUNC3(d);
	FUNC1(d);
	FUNC2(d);
	FUNC0("state should be zero now: %x\n", d->state);
	d->state = DVB_USB_STATE_INIT;

	if (d->priv != NULL && d->props.priv_destroy != NULL)
		d->props.priv_destroy(d);

	FUNC4(d->priv);
	FUNC4(d);
	return 0;
}