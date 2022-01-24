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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct module {int dummy; } ;
struct dvb_usb_device_properties {int /*<<< orphan*/  no_reconnect; } ;
struct dvb_usb_device_description {int /*<<< orphan*/  name; } ;
struct dvb_usb_device {struct module* owner; struct dvb_usb_device_description* desc; int /*<<< orphan*/  props; struct usb_device* udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usb_device*,struct dvb_usb_device_properties*) ; 
 struct dvb_usb_device_description* FUNC2 (struct usb_device*,struct dvb_usb_device_properties*,int*) ; 
 int FUNC3 (struct dvb_usb_device*,short*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 struct dvb_usb_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct dvb_usb_device_properties*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct dvb_usb_device*) ; 

int FUNC10(struct usb_interface *intf,
			struct dvb_usb_device_properties *props,
			struct module *owner, struct dvb_usb_device **du,
			short *adapter_nums)
{
	struct usb_device *udev = FUNC6(intf);
	struct dvb_usb_device *d = NULL;
	struct dvb_usb_device_description *desc = NULL;

	int ret = -ENOMEM, cold = 0;

	if (du != NULL)
		*du = NULL;

	if ((desc = FUNC2(udev, props, &cold)) == NULL) {
		FUNC0("something went very wrong, device was not found in current device list - let's see what comes next.\n");
		return -ENODEV;
	}

	if (cold) {
		FUNC5("found a '%s' in cold state, will try to load a firmware", desc->name);
		ret = FUNC1(udev, props);
		if (!props->no_reconnect || ret != 0)
			return ret;
	}

	FUNC5("found a '%s' in warm state.", desc->name);
	d = FUNC7(sizeof(struct dvb_usb_device), GFP_KERNEL);
	if (d == NULL) {
		FUNC4("no memory for 'struct dvb_usb_device'");
		return -ENOMEM;
	}

	d->udev = udev;
	FUNC8(&d->props, props, sizeof(struct dvb_usb_device_properties));
	d->desc = desc;
	d->owner = owner;

	FUNC9(intf, d);

	if (du != NULL)
		*du = d;

	ret = FUNC3(d, adapter_nums);

	if (ret == 0)
		FUNC5("%s successfully initialized and connected.", desc->name);
	else
		FUNC5("%s error while loading driver (%d)", desc->name, ret);
	return ret;
}