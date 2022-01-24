#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  set_voltage; } ;
struct TYPE_9__ {TYPE_2__ ops; } ;
struct TYPE_8__ {TYPE_4__* fe; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int,...) ; 
 int /*<<< orphan*/  dw210x_set_voltage ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  mt312_attach ; 
 int /*<<< orphan*/  zl10039_attach ; 
 int /*<<< orphan*/  zl313_config ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *d)
{
	d->fe_adap[0].fe = FUNC0(mt312_attach, &zl313_config,
			d->dev->i2c_adap);
	if (d->fe_adap[0].fe != NULL) {
		if (FUNC0(zl10039_attach, d->fe_adap[0].fe, 0x60,
				&d->dev->i2c_adap)) {
			d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;
			FUNC1("Attached zl100313+zl10039!");
			return 0;
		}
	}

	return -EIO;
}