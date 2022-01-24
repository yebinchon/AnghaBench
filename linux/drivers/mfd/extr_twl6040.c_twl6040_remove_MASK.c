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
struct twl6040 {int /*<<< orphan*/  supplies; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; scalar_t__ power_count; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL6040_NUM_SUPPLIES ; 
 struct twl6040* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twl6040*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct twl6040 *twl6040 = FUNC0(client);

	if (twl6040->power_count)
		FUNC4(twl6040, 0);

	FUNC2(twl6040->irq, twl6040->irq_data);

	FUNC1(&client->dev);

	FUNC3(TWL6040_NUM_SUPPLIES, twl6040->supplies);

	return 0;
}