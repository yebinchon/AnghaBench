#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_rds_data {int dummy; } ;
struct si476x_platform_data {int gpio_reset; int /*<<< orphan*/  pinmux; int /*<<< orphan*/  diversity_mode; int /*<<< orphan*/  power_up_parameters; } ;
struct si476x_pinmux {int dummy; } ;
struct TYPE_6__ {scalar_t__ dclk; scalar_t__ dfs; scalar_t__ dout; scalar_t__ xout; } ;
struct si476x_core {int gpio_reset; int rds_fifo_depth; scalar_t__ chip_id; int /*<<< orphan*/  rds_fifo; struct mfd_cell* cells; TYPE_2__ pinmux; int /*<<< orphan*/  status_monitor; int /*<<< orphan*/  rds_fifo_drainer; int /*<<< orphan*/  rds_read_queue; int /*<<< orphan*/  rds_drainer_status_lock; int /*<<< orphan*/  tuning; int /*<<< orphan*/  command; int /*<<< orphan*/  cmd_lock; TYPE_3__* supplies; int /*<<< orphan*/  diversity_mode; TYPE_2__ power_up_parameters; int /*<<< orphan*/  power_state; int /*<<< orphan*/  is_alive; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct mfd_cell {char* name; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int irq; scalar_t__ addr; TYPE_1__* adapter; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {char* supply; } ;
struct TYPE_5__ {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SI476X_CHIP_SI4761 ; 
 scalar_t__ SI476X_CHIP_SI4764 ; 
 size_t SI476X_CODEC_CELL ; 
 scalar_t__ SI476X_DCLK_DAUDIO ; 
 scalar_t__ SI476X_DFS_DAUDIO ; 
 scalar_t__ SI476X_DOUT_I2S_OUTPUT ; 
 int SI476X_DRIVER_RDS_FIFO_DEPTH ; 
 int /*<<< orphan*/  SI476X_POWER_DOWN ; 
 size_t SI476X_RADIO_CELL ; 
 scalar_t__ SI476X_XOUT_TRISTATE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 struct si476x_platform_data* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct si476x_core* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct si476x_core*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct i2c_client*,struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC24 (int /*<<< orphan*/ *,scalar_t__,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si476x_core_drain_rds_fifo ; 
 int FUNC26 (struct si476x_core*) ; 
 int /*<<< orphan*/  si476x_core_interrupt ; 
 int /*<<< orphan*/  si476x_core_poll_loop ; 

__attribute__((used)) static int FUNC27(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	int rval;
	struct si476x_core          *core;
	struct si476x_platform_data *pdata;
	struct mfd_cell *cell;
	int              cell_num;

	core = FUNC10(&client->dev, sizeof(*core), GFP_KERNEL);
	if (!core)
		return -ENOMEM;

	core->client = client;

	core->regmap = FUNC11(core);
	if (FUNC3(core->regmap)) {
		rval = FUNC4(core->regmap);
		FUNC7(&client->dev,
			"Failed to allocate register map: %d\n",
			rval);
		return rval;
	}

	FUNC19(client, core);

	FUNC5(&core->is_alive, 0);
	core->power_state = SI476X_POWER_DOWN;

	pdata = FUNC8(&client->dev);
	if (pdata) {
		FUNC23(&core->power_up_parameters,
		       &pdata->power_up_parameters,
		       sizeof(core->power_up_parameters));

		core->gpio_reset = -1;
		if (FUNC17(pdata->gpio_reset)) {
			rval = FUNC18(pdata->gpio_reset, "si476x reset");
			if (rval) {
				FUNC7(&client->dev,
					"Failed to request gpio: %d\n", rval);
				return rval;
			}
			core->gpio_reset = pdata->gpio_reset;
			FUNC15(core->gpio_reset, 0);
		}

		core->diversity_mode = pdata->diversity_mode;
		FUNC23(&core->pinmux, &pdata->pinmux,
		       sizeof(struct si476x_pinmux));
	} else {
		FUNC7(&client->dev, "No platform data provided\n");
		return -EINVAL;
	}

	core->supplies[0].supply = "vd";
	core->supplies[1].supply = "va";
	core->supplies[2].supply = "vio1";
	core->supplies[3].supply = "vio2";

	rval = FUNC12(&client->dev,
				       FUNC0(core->supplies),
				       core->supplies);
	if (rval) {
		FUNC7(&client->dev, "Failed to get all of the regulators\n");
		goto free_gpio;
	}

	FUNC25(&core->cmd_lock);
	FUNC20(&core->command);
	FUNC20(&core->tuning);

	rval = FUNC21(&core->rds_fifo,
			   SI476X_DRIVER_RDS_FIFO_DEPTH *
			   sizeof(struct v4l2_rds_data),
			   GFP_KERNEL);
	if (rval) {
		FUNC7(&client->dev, "Could not allocate the FIFO\n");
		goto free_gpio;
	}
	FUNC25(&core->rds_drainer_status_lock);
	FUNC20(&core->rds_read_queue);
	FUNC2(&core->rds_fifo_drainer, si476x_core_drain_rds_fifo);

	if (client->irq) {
		rval = FUNC13(&client->dev,
						 client->irq, NULL,
						 si476x_core_interrupt,
						 IRQF_TRIGGER_FALLING |
						 IRQF_ONESHOT,
						 client->name, core);
		if (rval < 0) {
			FUNC7(&client->dev, "Could not request IRQ %d\n",
				client->irq);
			goto free_kfifo;
		}
		FUNC14(client->irq);
		FUNC6(&client->dev, "IRQ requested.\n");

		core->rds_fifo_depth = 20;
	} else {
		FUNC1(&core->status_monitor,
				  si476x_core_poll_loop);
		FUNC9(&client->dev,
			 "No IRQ number specified, will use polling\n");

		core->rds_fifo_depth = 5;
	}

	core->chip_id = id->driver_data;

	rval = FUNC26(core);
	if (rval < 0) {
		rval = -ENODEV;
		goto free_kfifo;
	}

	cell_num = 0;

	cell = &core->cells[SI476X_RADIO_CELL];
	cell->name = "si476x-radio";
	cell_num++;

#ifdef CONFIG_SND_SOC_SI476X
	if ((core->chip_id == SI476X_CHIP_SI4761 ||
	     core->chip_id == SI476X_CHIP_SI4764)	&&
	    core->pinmux.dclk == SI476X_DCLK_DAUDIO     &&
	    core->pinmux.dfs  == SI476X_DFS_DAUDIO      &&
	    core->pinmux.dout == SI476X_DOUT_I2S_OUTPUT &&
	    core->pinmux.xout == SI476X_XOUT_TRISTATE) {
		cell = &core->cells[SI476X_CODEC_CELL];
		cell->name          = "si476x-codec";
		cell_num++;
	}
#endif
	rval = FUNC24(&client->dev,
			       (client->adapter->nr << 8) + client->addr,
			       core->cells, cell_num,
			       NULL, 0, NULL);
	if (!rval)
		return 0;

free_kfifo:
	FUNC22(&core->rds_fifo);

free_gpio:
	if (FUNC17(core->gpio_reset))
		FUNC16(core->gpio_reset);

	return rval;
}