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
typedef  int /*<<< orphan*/  u8 ;
struct usb_data_stream_properties {int endpoint; } ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct dvb_usb_adapter {int pid_filtering; int max_feed_count; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct dvb_usb_adapter* FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int pid_filter ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u8 *ts_type,
		struct usb_data_stream_properties *stream)
{
	struct dvb_usb_adapter *adap = FUNC1(fe);
	struct dvb_usb_device *d;

	if (adap == NULL)
		return 0;

	d = FUNC0(adap);

	/* Turn PID filter on the fly by module option */
	if (pid_filter == 2) {
		adap->pid_filtering  = true;
		adap->max_feed_count = 15;
	}

	if (!(FUNC2(d->udev->descriptor.idProduct)
		== 0x1122))
		stream->endpoint = 0x8;

	return 0;
}