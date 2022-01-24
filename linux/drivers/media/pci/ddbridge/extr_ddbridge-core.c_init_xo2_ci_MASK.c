#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_adapter {int dummy; } ;
struct ddb_port {size_t lnr; int /*<<< orphan*/  nr; struct ddb* dev; TYPE_1__* i2c; } ;
struct ddb {int /*<<< orphan*/  dev; TYPE_3__* link; } ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {scalar_t__ con_clock; } ;
struct TYPE_4__ {struct i2c_adapter adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int,int,int*) ; 
 int FUNC2 (struct i2c_adapter*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ddb_port *port)
{
	struct i2c_adapter *i2c = &port->i2c->adap;
	struct ddb *dev = port->dev;
	u8 val, data[2];
	int res;

	res = FUNC2(i2c, 0x10, 0x04, data, 2);
	if (res < 0)
		return res;

	if (data[0] > 1)  {
		FUNC0(dev->dev, "Port %d: invalid XO2 CI %02x\n",
			 port->nr, data[0]);
		return -1;
	}
	FUNC0(dev->dev, "Port %d: DuoFlex CI %u.%u\n",
		 port->nr, data[0], data[1]);

	FUNC1(i2c, 0x10, 0x08, &val);
	if (val != 0) {
		FUNC3(i2c, 0x10, 0x08, 0x00);
		FUNC4(100);
	}
	/* Enable both CI */
	FUNC3(i2c, 0x10, 0x08, 3);
	FUNC5(2000, 3000);

	/* speed: 0=55,1=75,2=90,3=104 MBit/s */
	FUNC3(i2c, 0x10, 0x09, 1);

	FUNC3(i2c, 0x10, 0x08, 0x83);
	FUNC5(2000, 3000);

	if (dev->link[port->lnr].info->con_clock) {
		FUNC0(dev->dev, "Setting continuous clock for DuoFlex CI\n");
		FUNC3(i2c, 0x10, 0x0a, 0x03);
		FUNC3(i2c, 0x10, 0x0b, 0x03);
	} else {
		FUNC3(i2c, 0x10, 0x0a, 0x01);
		FUNC3(i2c, 0x10, 0x0b, 0x01);
	}
	return 0;
}