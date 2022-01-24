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
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ rc; } ;
struct dvb_usb_device {int state; int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  input_dev; TYPE_2__ props; int /*<<< orphan*/  rc_query_work; } ;

/* Variables and functions */
 scalar_t__ DVB_RC_LEGACY ; 
 int DVB_USB_STATE_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct dvb_usb_device *d)
{
	if (d->state & DVB_USB_STATE_REMOTE) {
		FUNC0(&d->rc_query_work);
		if (d->props.rc.mode == DVB_RC_LEGACY)
			FUNC1(d->input_dev);
		else
			FUNC2(d->rc_dev);
	}
	d->state &= ~DVB_USB_STATE_REMOTE;
	return 0;
}