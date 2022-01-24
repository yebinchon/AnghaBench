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
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;

/* Variables and functions */
#define  DVB_FRONTEND_COMPONENT_TUNER 128 
 int FUNC0 (struct dvb_usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC3(void *adapter_priv, int component,
				    int cmd, int arg)
{
	struct i2c_adapter *adap = adapter_priv;
	struct dvb_usb_device *d = FUNC2(adap);
	struct usb_interface *intf = d->intf;

	FUNC1(&intf->dev, "component=%d cmd=%d arg=%d\n",
		component, cmd, arg);

	switch (component) {
	case DVB_FRONTEND_COMPONENT_TUNER:
		return FUNC0(d, cmd, arg);
	default:
		break;
	}

	return 0;
}