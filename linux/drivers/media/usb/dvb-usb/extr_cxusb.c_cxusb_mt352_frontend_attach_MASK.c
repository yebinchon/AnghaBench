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
struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  udev; } ;
struct TYPE_3__ {scalar_t__ fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxusb_mt352_config ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mt352_attach ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	/* used in both lgz201 and th7579 */
	if (FUNC3(adap->dev->udev, 0, 0) < 0)
		FUNC2("set interface failed");

	FUNC0(adap->dev, CMD_DIGITAL, NULL, 0, NULL, 0);

	adap->fe_adap[0].fe = FUNC1(mt352_attach, &cxusb_mt352_config,
					 &adap->dev->i2c_adap);
	if (adap->fe_adap[0].fe)
		return 0;

	return -EIO;
}