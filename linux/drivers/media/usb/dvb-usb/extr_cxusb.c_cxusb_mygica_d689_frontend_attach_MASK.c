#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* adapter; int /*<<< orphan*/  generic_bulk_ctrl_endpoint; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; TYPE_4__ props; int /*<<< orphan*/  udev; } ;
struct dvb_usb_adapter {TYPE_5__* fe_adap; struct dvb_usb_device* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  fe; } ;
struct TYPE_8__ {TYPE_2__* fe; } ;
struct TYPE_6__ {int /*<<< orphan*/  endpoint; } ;
struct TYPE_7__ {TYPE_1__ stream; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  atbm8830_attach ; 
 scalar_t__ FUNC0 (struct dvb_usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mygica_d689_atbm8830_cfg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = adap->dev;

	/* Select required USB configuration */
	if (FUNC6(d->udev, 0, 0) < 0)
		FUNC2("set interface failed");

	/* Unblock all USB pipes */
	FUNC4(d->udev,
		       FUNC7(d->udev,
				       d->props.generic_bulk_ctrl_endpoint));
	FUNC4(d->udev,
		       FUNC5(d->udev,
				       d->props.generic_bulk_ctrl_endpoint));
	FUNC4(d->udev,
		       FUNC5(d->udev,
				       d->props.adapter[0].fe[0].stream.endpoint));

	/* Reset the tuner */
	if (FUNC0(d, 0x07, 0) < 0) {
		FUNC2("clear tuner gpio failed");
		return -EIO;
	}
	FUNC3(100);
	if (FUNC0(d, 0x07, 1) < 0) {
		FUNC2("set tuner gpio failed");
		return -EIO;
	}
	FUNC3(100);

	/* Attach frontend */
	adap->fe_adap[0].fe = FUNC1(atbm8830_attach,
					 &mygica_d689_atbm8830_cfg,
					 &d->i2c_adap);
	if (!adap->fe_adap[0].fe)
		return -EIO;

	return 0;
}