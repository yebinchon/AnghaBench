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
struct si476x_core {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  rds_fifo; int /*<<< orphan*/  status_monitor; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct si476x_core* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct si476x_core*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct si476x_core *core = FUNC4(client);

	FUNC7(core);
	FUNC6(&client->dev);

	if (client->irq)
		FUNC1(client->irq);
	else
		FUNC0(&core->status_monitor);

	FUNC5(&core->rds_fifo);

	if (FUNC3(core->gpio_reset))
		FUNC2(core->gpio_reset);

	return 0;
}