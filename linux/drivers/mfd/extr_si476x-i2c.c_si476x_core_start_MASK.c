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
struct si476x_core {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  status_monitor; int /*<<< orphan*/  is_alive; struct i2c_client* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  power_up_parameters; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int SI476X_CTSIEN ; 
 int /*<<< orphan*/  SI476X_PROP_INT_CTL_ENABLE ; 
 int SI476X_RDSIEN ; 
 int SI476X_STCIEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct si476x_core*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC10 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(struct si476x_core *core, bool soft)
{
	struct i2c_client *client = core->client;
	int err;

	if (!soft) {
		if (FUNC5(core->gpio_reset))
			FUNC6(core->gpio_reset, 1);

		if (client->irq)
			FUNC4(client->irq);

		FUNC11(100);

		if (!client->irq) {
			FUNC0(&core->is_alive, 1);
			FUNC10(core);
		}
	} else {
		if (client->irq)
			FUNC4(client->irq);
		else {
			FUNC0(&core->is_alive, 1);
			FUNC10(core);
		}
	}

	err = FUNC8(core,
				       &core->power_up_parameters);

	if (err < 0) {
		FUNC2(&core->client->dev,
			"Power up failure(err = %d)\n",
			err);
		goto disable_irq;
	}

	if (client->irq)
		FUNC0(&core->is_alive, 1);

	err = FUNC9(core);
	if (err < 0) {
		FUNC2(&core->client->dev,
			"Failed to configure pinmux(err = %d)\n",
			err);
		goto disable_irq;
	}

	if (client->irq) {
		err = FUNC7(core->regmap,
				   SI476X_PROP_INT_CTL_ENABLE,
				   SI476X_RDSIEN |
				   SI476X_STCIEN |
				   SI476X_CTSIEN);
		if (err < 0) {
			FUNC2(&core->client->dev,
				"Failed to configure interrupt sources"
				"(err = %d)\n", err);
			goto disable_irq;
		}
	}

	return 0;

disable_irq:
	if (err == -ENODEV)
		FUNC0(&core->is_alive, 0);

	if (client->irq)
		FUNC3(client->irq);
	else
		FUNC1(&core->status_monitor);

	if (FUNC5(core->gpio_reset))
		FUNC6(core->gpio_reset, 0);

	return err;
}