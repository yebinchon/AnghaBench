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
struct max8997_dev {int /*<<< orphan*/ * reg_dump; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX8997_MUIC_REG_END ; 
 int MAX8997_REG_PMIC_END ; 
 struct max8997_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/ * max8997_dumpaddr_haptic ; 
 int /*<<< orphan*/ * max8997_dumpaddr_muic ; 
 int /*<<< orphan*/ * max8997_dumpaddr_pmic ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct i2c_client *i2c = FUNC3(dev);
	struct max8997_dev *max8997 = FUNC1(i2c);
	int i;

	for (i = 0; i < FUNC0(max8997_dumpaddr_pmic); i++)
		FUNC2(i2c, max8997_dumpaddr_pmic[i],
				max8997->reg_dump[i]);

	for (i = 0; i < FUNC0(max8997_dumpaddr_muic); i++)
		FUNC2(i2c, max8997_dumpaddr_muic[i],
				max8997->reg_dump[i + MAX8997_REG_PMIC_END]);

	for (i = 0; i < FUNC0(max8997_dumpaddr_haptic); i++)
		FUNC2(i2c, max8997_dumpaddr_haptic[i],
				max8997->reg_dump[i + MAX8997_REG_PMIC_END +
				MAX8997_MUIC_REG_END]);

	return 0;
}