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
struct lme2510_state {int /*<<< orphan*/  dvb_usb_lme2510_firmware; } ;
struct dvb_usb_device {TYPE_1__* props; int /*<<< orphan*/  udev; struct lme2510_state* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  bInterfaceNumber; } ;

/* Variables and functions */
 int COLD ; 
 int EINVAL ; 
 int WARM ; 
 int /*<<< orphan*/  dvb_usb_lme2510_firmware ; 
 int FUNC0 (struct dvb_usb_device*) ; 
 char* FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d, const char **name)
{
	struct lme2510_state *st = d->priv;
	int status;

	FUNC2(d->udev);

	FUNC3(d->udev,
		d->props->bInterfaceNumber, 1);

	st->dvb_usb_lme2510_firmware = dvb_usb_lme2510_firmware;

	status = FUNC0(d);
	if (status == 0x44) {
		*name = FUNC1(d, 0);
		return COLD;
	}

	if (status != 0x47)
		return -EINVAL;

	return WARM;
}