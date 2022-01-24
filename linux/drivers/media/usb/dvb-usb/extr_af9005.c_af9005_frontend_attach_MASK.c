#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_adapter {TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_5__ {struct usb_device* udev; } ;
struct TYPE_4__ {int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*)) ; 
 scalar_t__ dvb_usb_af9005_dump_eeprom ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_adapter *adap)
{
	u8 buf[8];
	int i;

	/* without these calls the first commands after downloading
	   the firmware fail. I put these calls here to simulate
	   what it is done in dvb-usb-init.c.
	 */
	struct usb_device *udev = adap->dev->udev;
	FUNC4(udev, FUNC6(udev, 2));
	FUNC4(udev, FUNC5(udev, 1));
	if (dvb_usb_af9005_dump_eeprom) {
		FUNC3("EEPROM DUMP\n");
		for (i = 0; i < 255; i += 8) {
			FUNC1(adap->dev, i, buf, 8);
			FUNC2(buf, 8, printk);
		}
	}
	adap->fe_adap[0].fe = FUNC0(adap->dev);
	return 0;
}