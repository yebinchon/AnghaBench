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
struct mt9m001 {int /*<<< orphan*/  clk; int /*<<< orphan*/  standby_gpio; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (struct device*) ; 
 struct mt9m001* FUNC3 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct i2c_client *client = FUNC2(dev);
	struct mt9m001 *mt9m001 = FUNC3(client);

	FUNC1(mt9m001->standby_gpio, 1);
	FUNC0(mt9m001->clk);

	return 0;
}