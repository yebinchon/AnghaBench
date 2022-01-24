#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_4__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_8__ {TYPE_3__* fe; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_gate_ctrl; } ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  tda10023_attach ; 
 int /*<<< orphan*/  tda10023_config ; 
 int /*<<< orphan*/  tda10048_attach ; 
 int /*<<< orphan*/  tda10048_config ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  ttusb2_ct3650_i2c_gate_ctrl ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	if (FUNC4(adap->dev->udev, 0, 3) < 0)
		FUNC2("set interface to alts=3 failed");

	if (adap->fe_adap[0].fe == NULL) {
		/* FE 0 DVB-C */
		adap->fe_adap[0].fe = FUNC1(tda10023_attach,
			&tda10023_config, &adap->dev->i2c_adap, 0x48);

		if (adap->fe_adap[0].fe == NULL) {
			FUNC0("TDA10023 attach failed\n");
			return -ENODEV;
		}
		FUNC3(adap);
	} else {
		adap->fe_adap[1].fe = FUNC1(tda10048_attach,
			&tda10048_config, &adap->dev->i2c_adap);

		if (adap->fe_adap[1].fe == NULL) {
			FUNC0("TDA10048 attach failed\n");
			return -ENODEV;
		}

		/* tuner is behind TDA10023 I2C-gate */
		adap->fe_adap[1].fe->ops.i2c_gate_ctrl = ttusb2_ct3650_i2c_gate_ctrl;

	}

	return 0;
}