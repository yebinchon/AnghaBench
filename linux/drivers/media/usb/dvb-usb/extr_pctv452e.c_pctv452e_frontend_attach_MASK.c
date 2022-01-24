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
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct dvb_usb_adapter {TYPE_3__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_6__ {TYPE_2__* desc; int /*<<< orphan*/  i2c_adap; } ;
struct TYPE_5__ {struct usb_device_id** warm_ids; } ;
struct TYPE_4__ {int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ USB_PID_TECHNOTREND_CONNECT_S2_3650_CI ; 
 scalar_t__ USB_VID_TECHNOTREND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  lnbp22_attach ; 
 int /*<<< orphan*/  stb0899_attach ; 
 int /*<<< orphan*/  stb0899_config ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_adapter*) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *a)
{
	struct usb_device_id *id;

	a->fe_adap[0].fe = FUNC0(stb0899_attach, &stb0899_config,
						&a->dev->i2c_adap);
	if (!a->fe_adap[0].fe)
		return -ENODEV;
	if ((FUNC0(lnbp22_attach, a->fe_adap[0].fe,
					&a->dev->i2c_adap)) == NULL)
		FUNC1("Cannot attach lnbp22\n");

	id = a->dev->desc->warm_ids[0];
	if (USB_VID_TECHNOTREND == id->idVendor
	    && USB_PID_TECHNOTREND_CONNECT_S2_3650_CI == id->idProduct)
		/* Error ignored. */
		FUNC2(a);

	return 0;
}