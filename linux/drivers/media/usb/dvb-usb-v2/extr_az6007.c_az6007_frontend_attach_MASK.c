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
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; } ;
struct dvb_usb_adapter {TYPE_2__** fe; } ;
struct az6007_device_state {int /*<<< orphan*/  gate_ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  i2c_gate_ctrl; } ;
struct TYPE_4__ {TYPE_1__ ops; struct dvb_usb_adapter* sec_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct az6007_device_state* FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  drxk_attach ; 
 int /*<<< orphan*/  drxk_gate_ctrl ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  terratec_h7_drxk ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	struct az6007_device_state *st = FUNC1(adap);
	struct dvb_usb_device *d = FUNC0(adap);

	FUNC4("attaching demod drxk\n");

	adap->fe[0] = FUNC3(drxk_attach, &terratec_h7_drxk,
				 &d->i2c_adap);
	if (!adap->fe[0])
		return -EINVAL;

	adap->fe[0]->sec_priv = adap;
	st->gate_ctrl = adap->fe[0]->ops.i2c_gate_ctrl;
	adap->fe[0]->ops.i2c_gate_ctrl = drxk_gate_ctrl;

	FUNC2(adap);

	return 0;
}