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
struct max77693_dev {int /*<<< orphan*/  irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct max77693_dev* FUNC3 (struct i2c_client*) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct i2c_client *i2c = FUNC4(dev);
	struct max77693_dev *max77693 = FUNC3(i2c);

	if (FUNC0(dev)) {
		FUNC2(max77693->irq);
		FUNC1(max77693->irq);
	}

	return 0;
}