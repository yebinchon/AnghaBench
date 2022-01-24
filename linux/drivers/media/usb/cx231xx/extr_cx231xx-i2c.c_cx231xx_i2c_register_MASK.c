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
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {struct cx231xx_i2c* algo_data; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct cx231xx_i2c {int nr; scalar_t__ i2c_rc; TYPE_2__ i2c_adap; struct cx231xx* dev; } ;
struct cx231xx {char* name; int /*<<< orphan*/  dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  cx231xx_send_usb_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ cx231xx_adap_template ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

int FUNC5(struct cx231xx_i2c *bus)
{
	struct cx231xx *dev = bus->dev;

	FUNC0(!dev->cx231xx_send_usb_command);

	bus->i2c_adap = cx231xx_adap_template;
	bus->i2c_adap.dev.parent = dev->dev;

	FUNC4(bus->i2c_adap.name, sizeof(bus->i2c_adap.name), "%s-%d", bus->dev->name, bus->nr);

	bus->i2c_adap.algo_data = bus;
	FUNC3(&bus->i2c_adap, &dev->v4l2_dev);
	bus->i2c_rc = FUNC2(&bus->i2c_adap);

	if (0 != bus->i2c_rc)
		FUNC1(dev->dev,
			 "i2c bus %d register FAILED\n", bus->nr);

	return bus->i2c_rc;
}