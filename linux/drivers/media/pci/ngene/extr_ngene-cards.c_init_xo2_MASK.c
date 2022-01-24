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
typedef  int u8 ;
struct ngene_channel {int /*<<< orphan*/  number; TYPE_2__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int,int,int*) ; 
 int FUNC2 (struct i2c_adapter*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ngene_channel *chan, struct i2c_adapter *i2c)
{
	struct device *pdev = &chan->dev->pci_dev->dev;
	u8 addr = 0x10;
	u8 val, data[2];
	int res;

	res = FUNC2(i2c, addr, 0x04, data, 2);
	if (res < 0)
		return res;

	if (data[0] != 0x01)  {
		FUNC0(pdev, "Invalid XO2 on channel %d\n", chan->number);
		return -1;
	}

	FUNC1(i2c, addr, 0x08, &val);
	if (val != 0) {
		FUNC3(i2c, addr, 0x08, 0x00);
		FUNC4(100);
	}
	/* Enable tuner power, disable pll, reset demods */
	FUNC3(i2c, addr, 0x08, 0x04);
	FUNC5(2000, 3000);
	/* Release demod resets */
	FUNC3(i2c, addr, 0x08, 0x07);

	/*
	 * speed: 0=55,1=75,2=90,3=104 MBit/s
	 * Note: The ngene hardware must be run at 75 MBit/s compared
	 * to more modern ddbridge hardware which runs at 90 MBit/s,
	 * else there will be issues with the data transport and non-
	 * working secondary/slave demods/tuners.
	 */
	FUNC3(i2c, addr, 0x09, 1);

	FUNC3(i2c, addr, 0x0a, 0x01);
	FUNC3(i2c, addr, 0x0b, 0x01);

	FUNC5(2000, 3000);
	/* Start XO2 PLL */
	FUNC3(i2c, addr, 0x08, 0x87);

	return 0;
}