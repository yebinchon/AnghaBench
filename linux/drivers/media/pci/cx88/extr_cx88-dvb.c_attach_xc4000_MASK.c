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
struct xc4000_config {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * frontend; } ;
struct vb2_dvb_frontend {TYPE_2__ dvb; } ;
struct dvb_frontend {int dummy; } ;
struct cx8802_dev {TYPE_1__* core; int /*<<< orphan*/  frontends; } ;
struct TYPE_3__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dvb_frontend* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xc4000_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct vb2_dvb_frontend* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xc4000_attach ; 

__attribute__((used)) static int FUNC6(struct cx8802_dev *dev, struct xc4000_config *cfg)
{
	struct dvb_frontend *fe;
	struct vb2_dvb_frontend *fe0 = NULL;

	/* Get the first frontend */
	fe0 = FUNC5(&dev->frontends, 1);
	if (!fe0)
		return -EINVAL;

	if (!fe0->dvb.frontend) {
		FUNC3("dvb frontend not attached. Can't attach xc4000\n");
		return -EINVAL;
	}

	fe = FUNC0(xc4000_attach, fe0->dvb.frontend, &dev->core->i2c_adap,
			cfg);
	if (!fe) {
		FUNC3("xc4000 attach failed\n");
		FUNC1(fe0->dvb.frontend);
		FUNC2(fe0->dvb.frontend);
		fe0->dvb.frontend = NULL;
		return -EINVAL;
	}

	FUNC4("xc4000 attached\n");

	return 0;
}