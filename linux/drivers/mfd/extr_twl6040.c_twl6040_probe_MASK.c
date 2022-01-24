#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct twl6040 {int rev; int audpwron; TYPE_4__* supplies; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; struct mfd_cell* cells; int /*<<< orphan*/ * regmap; TYPE_7__* dev; void* irq_th; void* irq_ready; int /*<<< orphan*/  ready; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * mclk; int /*<<< orphan*/ * clk32k; } ;
struct mfd_cell {char* name; void* num_resources; TYPE_1__* resources; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_7__ dev; int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;
struct TYPE_18__ {char* supply; } ;
struct TYPE_17__ {int start; int end; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TWL6040_IRQ_PLUG ; 
 int /*<<< orphan*/  TWL6040_IRQ_READY ; 
 int /*<<< orphan*/  TWL6040_IRQ_TH ; 
 int /*<<< orphan*/  TWL6040_IRQ_VIB ; 
 int /*<<< orphan*/  TWL6040_NUM_SUPPLIES ; 
 int /*<<< orphan*/  TWL6040_REG_ASICREV ; 
 int /*<<< orphan*/  TWL6040_REG_INTID ; 
 scalar_t__ TWL6040_REV_ES1_0 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char*,...) ; 
 void* FUNC5 (TYPE_7__*,char*) ; 
 int FUNC6 (TYPE_7__*,int,int /*<<< orphan*/ ,char*) ; 
 struct twl6040* FUNC7 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC10 (TYPE_7__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct twl6040*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct twl6040*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_7__*,int,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC24 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_1__* twl6040_codec_rsrc ; 
 scalar_t__ FUNC25 (struct twl6040*) ; 
 scalar_t__ FUNC26 (struct device_node*) ; 
 int /*<<< orphan*/  twl6040_irq_chip ; 
 TYPE_1__* twl6040_patch ; 
 int /*<<< orphan*/  twl6040_readyint_handler ; 
 int FUNC27 (struct twl6040*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twl6040_regmap_config ; 
 int /*<<< orphan*/  twl6040_thint_handler ; 
 TYPE_1__* twl6040_vibra_rsrc ; 

__attribute__((used)) static int FUNC28(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device_node *node = client->dev.of_node;
	struct twl6040 *twl6040;
	struct mfd_cell *cell = NULL;
	int irq, ret, children = 0;

	if (!node) {
		FUNC4(&client->dev, "of node is missing\n");
		return -EINVAL;
	}

	/* In order to operate correctly we need valid interrupt config */
	if (!client->irq) {
		FUNC4(&client->dev, "Invalid IRQ configuration\n");
		return -EINVAL;
	}

	twl6040 = FUNC7(&client->dev, sizeof(struct twl6040),
			       GFP_KERNEL);
	if (!twl6040)
		return -ENOMEM;

	twl6040->regmap = FUNC8(client, &twl6040_regmap_config);
	if (FUNC1(twl6040->regmap))
		return FUNC2(twl6040->regmap);

	FUNC12(client, twl6040);

	twl6040->clk32k = FUNC5(&client->dev, "clk32k");
	if (FUNC1(twl6040->clk32k)) {
		if (FUNC2(twl6040->clk32k) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(&client->dev, "clk32k is not handled\n");
		twl6040->clk32k = NULL;
	}

	twl6040->mclk = FUNC5(&client->dev, "mclk");
	if (FUNC1(twl6040->mclk)) {
		if (FUNC2(twl6040->mclk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(&client->dev, "mclk is not handled\n");
		twl6040->mclk = NULL;
	}

	twl6040->supplies[0].supply = "vio";
	twl6040->supplies[1].supply = "v2v1";
	ret = FUNC9(&client->dev, TWL6040_NUM_SUPPLIES,
				      twl6040->supplies);
	if (ret != 0) {
		FUNC4(&client->dev, "Failed to get supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC24(TWL6040_NUM_SUPPLIES, twl6040->supplies);
	if (ret != 0) {
		FUNC4(&client->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	twl6040->dev = &client->dev;
	twl6040->irq = client->irq;

	FUNC15(&twl6040->mutex);
	FUNC13(&twl6040->ready);

	FUNC22(twl6040->regmap, twl6040_patch,
			      FUNC0(twl6040_patch));

	twl6040->rev = FUNC27(twl6040, TWL6040_REG_ASICREV);
	if (twl6040->rev < 0) {
		FUNC4(&client->dev, "Failed to read revision register: %d\n",
			twl6040->rev);
		ret = twl6040->rev;
		goto gpio_err;
	}

	/* ERRATA: Automatic power-up is not possible in ES1.0 */
	if (FUNC25(twl6040) > TWL6040_REV_ES1_0)
		twl6040->audpwron = FUNC16(node,
						      "ti,audpwron-gpio", 0);
	else
		twl6040->audpwron = -EINVAL;

	if (FUNC11(twl6040->audpwron)) {
		ret = FUNC6(&client->dev, twl6040->audpwron,
					    GPIOF_OUT_INIT_LOW, "audpwron");
		if (ret)
			goto gpio_err;

		/* Clear any pending interrupt */
		FUNC27(twl6040, TWL6040_REG_INTID);
	}

	ret = FUNC19(twl6040->regmap, twl6040->irq, IRQF_ONESHOT,
				  0, &twl6040_irq_chip, &twl6040->irq_data);
	if (ret < 0)
		goto gpio_err;

	twl6040->irq_ready = FUNC21(twl6040->irq_data,
						 TWL6040_IRQ_READY);
	twl6040->irq_th = FUNC21(twl6040->irq_data,
					      TWL6040_IRQ_TH);

	ret = FUNC10(twl6040->dev, twl6040->irq_ready, NULL,
					twl6040_readyint_handler, IRQF_ONESHOT,
					"twl6040_irq_ready", twl6040);
	if (ret) {
		FUNC4(twl6040->dev, "READY IRQ request failed: %d\n", ret);
		goto readyirq_err;
	}

	ret = FUNC10(twl6040->dev, twl6040->irq_th, NULL,
					twl6040_thint_handler, IRQF_ONESHOT,
					"twl6040_irq_th", twl6040);
	if (ret) {
		FUNC4(twl6040->dev, "Thermal IRQ request failed: %d\n", ret);
		goto readyirq_err;
	}

	/*
	 * The main functionality of twl6040 to provide audio on OMAP4+ systems.
	 * We can add the ASoC codec child whenever this driver has been loaded.
	 */
	irq = FUNC21(twl6040->irq_data, TWL6040_IRQ_PLUG);
	cell = &twl6040->cells[children];
	cell->name = "twl6040-codec";
	twl6040_codec_rsrc[0].start = irq;
	twl6040_codec_rsrc[0].end = irq;
	cell->resources = twl6040_codec_rsrc;
	cell->num_resources = FUNC0(twl6040_codec_rsrc);
	children++;

	/* Vibra input driver support */
	if (FUNC26(node)) {
		irq = FUNC21(twl6040->irq_data, TWL6040_IRQ_VIB);

		cell = &twl6040->cells[children];
		cell->name = "twl6040-vibra";
		twl6040_vibra_rsrc[0].start = irq;
		twl6040_vibra_rsrc[0].end = irq;
		cell->resources = twl6040_vibra_rsrc;
		cell->num_resources = FUNC0(twl6040_vibra_rsrc);
		children++;
	}

	/* GPO support */
	cell = &twl6040->cells[children];
	cell->name = "twl6040-gpo";
	children++;

	/* PDM clock support  */
	cell = &twl6040->cells[children];
	cell->name = "twl6040-pdmclk";
	children++;

	/* The chip is powered down so mark regmap to cache only and dirty */
	FUNC17(twl6040->regmap, true);
	FUNC18(twl6040->regmap);

	ret = FUNC14(&client->dev, -1, twl6040->cells, children,
			      NULL, 0, NULL);
	if (ret)
		goto readyirq_err;

	return 0;

readyirq_err:
	FUNC20(twl6040->irq, twl6040->irq_data);
gpio_err:
	FUNC23(TWL6040_NUM_SUPPLIES, twl6040->supplies);
	return ret;
}