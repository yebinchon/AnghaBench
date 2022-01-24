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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct da9062 {int /*<<< orphan*/  regmap_irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct da9062* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c)
{
	struct da9062 *chip = FUNC0(i2c);

	FUNC1(chip->dev);
	FUNC2(i2c->irq, chip->regmap_irq);

	return 0;
}