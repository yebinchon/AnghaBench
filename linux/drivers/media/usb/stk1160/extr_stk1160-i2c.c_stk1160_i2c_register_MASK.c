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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {struct stk1160* algo_data; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_2__* adapter; } ;
struct stk1160 {TYPE_2__ i2c_adap; TYPE_4__ i2c_client; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ STK1160_ASIC ; 
 scalar_t__ STK1160_SICTL_CD ; 
 TYPE_2__ adap_template ; 
 TYPE_4__ client_template ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stk1160*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct stk1160 *dev)
{
	int rc;

	dev->i2c_adap = adap_template;
	dev->i2c_adap.dev.parent = dev->dev;
	FUNC4(dev->i2c_adap.name, "stk1160", sizeof(dev->i2c_adap.name));
	dev->i2c_adap.algo_data = dev;

	FUNC1(&dev->i2c_adap, &dev->v4l2_dev);

	rc = FUNC0(&dev->i2c_adap);
	if (rc < 0) {
		FUNC2("cannot add i2c adapter (%d)\n", rc);
		return rc;
	}

	dev->i2c_client = client_template;
	dev->i2c_client.adapter = &dev->i2c_adap;

	/* Set i2c clock divider device address */
	FUNC3(dev, STK1160_SICTL_CD,  0x0f);

	/* ??? */
	FUNC3(dev, STK1160_ASIC + 3,  0x00);

	return 0;
}