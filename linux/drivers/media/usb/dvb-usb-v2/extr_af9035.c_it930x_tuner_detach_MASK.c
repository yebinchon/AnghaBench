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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {scalar_t__* i2c_client; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {int id; } ;

/* Variables and functions */
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct state* FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	struct state *state = FUNC1(adap);
	struct dvb_usb_device *d = FUNC0(adap);
	struct usb_interface *intf = d->intf;

	FUNC3(&intf->dev, "adap->id=%d\n", adap->id);

	if (adap->id == 1) {
		if (state->i2c_client[3])
			FUNC2(d);
	} else if (adap->id == 0) {
		if (state->i2c_client[1])
			FUNC2(d);
	}

	return 0;
}