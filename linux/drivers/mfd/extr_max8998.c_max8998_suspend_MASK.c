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
struct max8998_dev {int /*<<< orphan*/  irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct max8998_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct i2c_client *i2c = FUNC3(dev);
	struct max8998_dev *max8998 = FUNC1(i2c);

	if (FUNC0(dev))
		FUNC2(max8998->irq, 1);
	return 0;
}