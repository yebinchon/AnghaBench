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
struct pm860x_platform_data {int dummy; } ;
struct pm860x_chip {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC3(struct pm860x_chip *chip,
				       struct i2c_client *i2c,
				       struct pm860x_platform_data *pdata)
{
	FUNC2(i2c);
	FUNC0(chip, pdata);
	FUNC1(chip, pdata);
}