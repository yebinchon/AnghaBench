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
struct intel_soc_pmic {int /*<<< orphan*/  irq_chip_data; int /*<<< orphan*/  irq; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crc_pwm_lookup ; 
 struct intel_soc_pmic* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panel_gpio_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c)
{
	struct intel_soc_pmic *pmic = FUNC1(&i2c->dev);

	FUNC5(pmic->irq, pmic->irq_chip_data);

	/* Remove lookup table for Panel Control from the GPIO Chip */
	FUNC2(&panel_gpio_table);

	/* remove crc-pwm lookup table */
	FUNC4(crc_pwm_lookup, FUNC0(crc_pwm_lookup));

	FUNC3(&i2c->dev);

	return 0;
}