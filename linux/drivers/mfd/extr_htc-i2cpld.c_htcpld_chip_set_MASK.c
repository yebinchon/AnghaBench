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
struct i2c_client {int dummy; } ;
struct htcpld_chip {int cache_out; int /*<<< orphan*/  set_val_work; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct htcpld_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset, int val)
{
	struct i2c_client *client;
	struct htcpld_chip *chip_data = FUNC0(chip);
	unsigned long flags;

	client = chip_data->client;
	if (!client)
		return;

	FUNC2(&chip_data->lock, flags);
	if (val)
		chip_data->cache_out |= (1 << offset);
	else
		chip_data->cache_out &= ~(1 << offset);
	FUNC3(&chip_data->lock, flags);

	FUNC1(&(chip_data->set_val_work));
}