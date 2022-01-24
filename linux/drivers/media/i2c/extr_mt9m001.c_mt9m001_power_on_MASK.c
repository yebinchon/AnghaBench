#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mt9m001 {scalar_t__ reset_gpio; scalar_t__ standby_gpio; int /*<<< orphan*/  clk; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct i2c_client* FUNC2 (struct device*) ; 
 struct mt9m001* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct i2c_client *client = FUNC2(dev);
	struct mt9m001 *mt9m001 = FUNC3(client);
	int ret;

	ret = FUNC0(mt9m001->clk);
	if (ret)
		return ret;

	if (mt9m001->standby_gpio) {
		FUNC1(mt9m001->standby_gpio, 0);
		FUNC4(1000, 2000);
	}

	if (mt9m001->reset_gpio) {
		FUNC1(mt9m001->reset_gpio, 1);
		FUNC4(1000, 2000);
		FUNC1(mt9m001->reset_gpio, 0);
		FUNC4(1000, 2000);
	}

	return 0;
}