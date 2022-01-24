#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct si476x_power_down_args {int xosc; } ;
struct si476x_core {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  status_monitor; TYPE_1__* client; int /*<<< orphan*/  is_alive; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct si476x_core*,struct si476x_power_down_args*) ; 

int FUNC6(struct si476x_core *core, bool soft)
{
	int err = 0;
	FUNC0(&core->is_alive, 0);

	if (soft) {
		/* TODO: This probably shoud be a configurable option,
		 * so it is possible to have the chips keep their
		 * oscillators running
		 */
		struct si476x_power_down_args args = {
			.xosc = false,
		};
		err = FUNC5(core, &args);
	}

	/* We couldn't disable those before
	 * 'si476x_core_cmd_power_down' since we expect to get CTS
	 * interrupt */
	if (core->client->irq)
		FUNC2(core->client->irq);
	else
		FUNC1(&core->status_monitor);

	if (!soft) {
		if (FUNC3(core->gpio_reset))
			FUNC4(core->gpio_reset, 0);
	}
	return err;
}