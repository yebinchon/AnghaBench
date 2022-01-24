#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; } ;
struct dvb_usb_adapter {TYPE_2__** fe; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  az6007_mt2063_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt2063_attach ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);

	FUNC2("attaching tuner mt2063\n");

	/* Attach mt2063 to DVB-C frontend */
	if (adap->fe[0]->ops.i2c_gate_ctrl)
		adap->fe[0]->ops.i2c_gate_ctrl(adap->fe[0], 1);
	if (!FUNC1(mt2063_attach, adap->fe[0],
			&az6007_mt2063_config,
			&d->i2c_adap))
		return -EINVAL;

	if (adap->fe[0]->ops.i2c_gate_ctrl)
		adap->fe[0]->ops.i2c_gate_ctrl(adap->fe[0], 0);

	return 0;
}