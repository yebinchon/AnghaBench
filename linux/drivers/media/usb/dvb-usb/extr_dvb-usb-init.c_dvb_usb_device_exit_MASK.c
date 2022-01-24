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
struct usb_interface {int dummy; } ;
struct dvb_usb_device {TYPE_1__* desc; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 struct dvb_usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC5(struct usb_interface *intf)
{
	struct dvb_usb_device *d = FUNC3(intf);
	const char *default_name = "generic DVB-USB module";
	char name[40];

	FUNC4(intf, NULL);
	if (d != NULL && d->desc != NULL) {
		FUNC2(name, d->desc->name, sizeof(name));
		FUNC0(d);
	} else {
		FUNC2(name, default_name, sizeof(name));
	}
	FUNC1("%s successfully deinitialized and disconnected.", name);

}