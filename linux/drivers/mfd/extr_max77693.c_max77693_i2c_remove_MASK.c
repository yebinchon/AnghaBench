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
struct max77693_dev {int /*<<< orphan*/  i2c_haptic; int /*<<< orphan*/  i2c_muic; int /*<<< orphan*/  irq_data_led; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_data_topsys; int /*<<< orphan*/  irq_data_chg; int /*<<< orphan*/  irq_data_muic; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct max77693_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c)
{
	struct max77693_dev *max77693 = FUNC0(i2c);

	FUNC2(max77693->dev);

	FUNC3(max77693->irq, max77693->irq_data_muic);
	FUNC3(max77693->irq, max77693->irq_data_chg);
	FUNC3(max77693->irq, max77693->irq_data_topsys);
	FUNC3(max77693->irq, max77693->irq_data_led);

	FUNC1(max77693->i2c_muic);
	FUNC1(max77693->i2c_haptic);

	return 0;
}