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
struct pm860x_chip {scalar_t__ companion; int /*<<< orphan*/  regmap_companion; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pm860x_chip* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pm860x_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct pm860x_chip *chip = FUNC0(client);

	FUNC2(chip);
	if (chip->companion) {
		FUNC3(chip->regmap_companion);
		FUNC1(chip->companion);
	}
	return 0;
}