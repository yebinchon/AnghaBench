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
typedef  int /*<<< orphan*/  u8 ;
struct xc2028_ctrl {int dummy; } ;
struct xc2028_config {struct xc2028_ctrl* ctrl; int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/ * i2c_adap; } ;
struct TYPE_3__ {int /*<<< orphan*/ * frontend; } ;
struct vb2_dvb_frontend {TYPE_1__ dvb; } ;
struct dvb_frontend {int dummy; } ;
struct cx8802_dev {TYPE_2__* core; int /*<<< orphan*/  frontends; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct xc2028_ctrl*) ; 
 struct dvb_frontend* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xc2028_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct vb2_dvb_frontend* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xc2028_attach ; 

__attribute__((used)) static int FUNC7(u8 addr, struct cx8802_dev *dev)
{
	struct dvb_frontend *fe;
	struct vb2_dvb_frontend *fe0 = NULL;
	struct xc2028_ctrl ctl;
	struct xc2028_config cfg = {
		.i2c_adap  = &dev->core->i2c_adap,
		.i2c_addr  = addr,
		.ctrl      = &ctl,
	};

	/* Get the first frontend */
	fe0 = FUNC6(&dev->frontends, 1);
	if (!fe0)
		return -EINVAL;

	if (!fe0->dvb.frontend) {
		FUNC4("dvb frontend not attached. Can't attach xc3028\n");
		return -EINVAL;
	}

	/*
	 * Some xc3028 devices may be hidden by an I2C gate. This is known
	 * to happen with some s5h1409-based devices.
	 * Now that I2C gate is open, sets up xc3028 configuration
	 */
	FUNC0(dev->core, &ctl);

	fe = FUNC1(xc2028_attach, fe0->dvb.frontend, &cfg);
	if (!fe) {
		FUNC4("xc3028 attach failed\n");
		FUNC2(fe0->dvb.frontend);
		FUNC3(fe0->dvb.frontend);
		fe0->dvb.frontend = NULL;
		return -EINVAL;
	}

	FUNC5("xc3028 attached\n");

	return 0;
}