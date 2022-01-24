#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct palmas_platform_data {int irq_flags; unsigned int pad1; unsigned int pad2; unsigned int power_ctrl; scalar_t__ pm_off; scalar_t__ mux_from_pdata; } ;
struct palmas_driver_data {int /*<<< orphan*/  irq_chip; int /*<<< orphan*/ * features; } ;
struct palmas {struct i2c_client** i2c_clients; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; struct i2c_client** regmap; int /*<<< orphan*/  led_muxed; int /*<<< orphan*/  pwm_muxed; int /*<<< orphan*/  gpio_muxed; TYPE_1__* dev; int /*<<< orphan*/  features; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; scalar_t__ addr; int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQ_TYPE_LEVEL_HIGH ; 
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PALMAS_GPIO_0_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_1_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_2_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_3_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_4_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_5_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_6_MUXED ; 
 int /*<<< orphan*/  PALMAS_GPIO_7_MUXED ; 
 int /*<<< orphan*/  PALMAS_INTERRUPT_BASE ; 
 int /*<<< orphan*/  PALMAS_INT_CTRL ; 
 unsigned int PALMAS_INT_CTRL_INT_CLEAR ; 
 int /*<<< orphan*/  PALMAS_LED1_MUXED ; 
 int /*<<< orphan*/  PALMAS_LED2_MUXED ; 
 int PALMAS_NUM_CLIENTS ; 
 int /*<<< orphan*/  PALMAS_PMU_CONTROL_BASE ; 
 int /*<<< orphan*/  PALMAS_POLARITY_CTRL ; 
 unsigned int PALMAS_POLARITY_CTRL_INT_POLARITY ; 
 int /*<<< orphan*/  PALMAS_POWER_CTRL ; 
 int /*<<< orphan*/  PALMAS_PRIMARY_SECONDARY_PAD1 ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_0 ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK ; 
 int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK ; 
 int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_3 ; 
 int /*<<< orphan*/  PALMAS_PRIMARY_SECONDARY_PAD2 ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_4 ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_5_MASK ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_6 ; 
 unsigned int PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_7_MASK ; 
 int /*<<< orphan*/  PALMAS_PU_PD_OD_BASE ; 
 int /*<<< orphan*/  PALMAS_PWM1_MUXED ; 
 int /*<<< orphan*/  PALMAS_PWM2_MUXED ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,...) ; 
 struct palmas_platform_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 struct i2c_client* FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct palmas*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct device_node* FUNC15 (struct device_node*) ; 
 int /*<<< orphan*/  of_palmas_match_tbl ; 
 struct palmas* palmas_dev ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct palmas_platform_data*) ; 
 scalar_t__ palmas_power_off ; 
 int /*<<< orphan*/ * palmas_regmap_config ; 
 int FUNC17 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ pm_power_off ; 
 int FUNC18 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct i2c_client*,unsigned int,unsigned int*) ; 
 int FUNC21 (struct i2c_client*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct palmas *palmas;
	struct palmas_platform_data *pdata;
	struct palmas_driver_data *driver_data;
	struct device_node *node = i2c->dev.of_node;
	int ret = 0, i;
	unsigned int reg, addr;
	int slave;
	const struct of_device_id *match;

	pdata = FUNC5(&i2c->dev);

	if (node && !pdata) {
		pdata = FUNC8(&i2c->dev, sizeof(*pdata), GFP_KERNEL);

		if (!pdata)
			return -ENOMEM;

		FUNC16(i2c, pdata);
	}

	if (!pdata)
		return -EINVAL;

	palmas = FUNC8(&i2c->dev, sizeof(struct palmas), GFP_KERNEL);
	if (palmas == NULL)
		return -ENOMEM;

	FUNC12(i2c, palmas);
	palmas->dev = &i2c->dev;
	palmas->irq = i2c->irq;

	match = FUNC14(of_palmas_match_tbl, &i2c->dev);

	if (!match)
		return -ENODATA;

	driver_data = (struct palmas_driver_data *)match->data;
	palmas->features = *driver_data->features;

	for (i = 0; i < PALMAS_NUM_CLIENTS; i++) {
		if (i == 0)
			palmas->i2c_clients[i] = i2c;
		else {
			palmas->i2c_clients[i] =
					FUNC11(i2c->adapter,
							i2c->addr + i);
			if (FUNC0(palmas->i2c_clients[i])) {
				FUNC4(palmas->dev,
					"can't attach client %d\n", i);
				ret = FUNC3(palmas->i2c_clients[i]);
				goto err_i2c;
			}
			palmas->i2c_clients[i]->dev.of_node = FUNC15(node);
		}
		palmas->regmap[i] = FUNC10(palmas->i2c_clients[i],
				&palmas_regmap_config[i]);
		if (FUNC0(palmas->regmap[i])) {
			ret = FUNC3(palmas->regmap[i]);
			FUNC4(palmas->dev,
				"Failed to allocate regmap %d, err: %d\n",
				i, ret);
			goto err_i2c;
		}
	}

	if (!palmas->irq) {
		FUNC7(palmas->dev, "IRQ missing: skipping irq request\n");
		goto no_irq;
	}

	/* Change interrupt line output polarity */
	if (pdata->irq_flags & IRQ_TYPE_LEVEL_HIGH)
		reg = PALMAS_POLARITY_CTRL_INT_POLARITY;
	else
		reg = 0;
	ret = FUNC17(palmas, PALMAS_PU_PD_OD_BASE,
			PALMAS_POLARITY_CTRL, PALMAS_POLARITY_CTRL_INT_POLARITY,
			reg);
	if (ret < 0) {
		FUNC4(palmas->dev, "POLARITY_CTRL update failed: %d\n", ret);
		goto err_i2c;
	}

	/* Change IRQ into clear on read mode for efficiency */
	slave = FUNC2(PALMAS_INTERRUPT_BASE);
	addr = FUNC1(PALMAS_INTERRUPT_BASE, PALMAS_INT_CTRL);
	reg = PALMAS_INT_CTRL_INT_CLEAR;

	FUNC21(palmas->regmap[slave], addr, reg);

	ret = FUNC18(palmas->regmap[slave], palmas->irq,
				  IRQF_ONESHOT | pdata->irq_flags, 0,
				  driver_data->irq_chip, &palmas->irq_data);
	if (ret < 0)
		goto err_i2c;

no_irq:
	slave = FUNC2(PALMAS_PU_PD_OD_BASE);
	addr = FUNC1(PALMAS_PU_PD_OD_BASE,
			PALMAS_PRIMARY_SECONDARY_PAD1);

	if (pdata->mux_from_pdata) {
		reg = pdata->pad1;
		ret = FUNC21(palmas->regmap[slave], addr, reg);
		if (ret)
			goto err_irq;
	} else {
		ret = FUNC20(palmas->regmap[slave], addr, &reg);
		if (ret)
			goto err_irq;
	}

	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_0))
		palmas->gpio_muxed |= PALMAS_GPIO_0_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK))
		palmas->gpio_muxed |= PALMAS_GPIO_1_MUXED;
	else if ((reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK) ==
			(2 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT))
		palmas->led_muxed |= PALMAS_LED1_MUXED;
	else if ((reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK) ==
			(3 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT))
		palmas->pwm_muxed |= PALMAS_PWM1_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK))
		palmas->gpio_muxed |= PALMAS_GPIO_2_MUXED;
	else if ((reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK) ==
			(2 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT))
		palmas->led_muxed |= PALMAS_LED2_MUXED;
	else if ((reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK) ==
			(3 << PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT))
		palmas->pwm_muxed |= PALMAS_PWM2_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_3))
		palmas->gpio_muxed |= PALMAS_GPIO_3_MUXED;

	addr = FUNC1(PALMAS_PU_PD_OD_BASE,
			PALMAS_PRIMARY_SECONDARY_PAD2);

	if (pdata->mux_from_pdata) {
		reg = pdata->pad2;
		ret = FUNC21(palmas->regmap[slave], addr, reg);
		if (ret)
			goto err_irq;
	} else {
		ret = FUNC20(palmas->regmap[slave], addr, &reg);
		if (ret)
			goto err_irq;
	}

	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_4))
		palmas->gpio_muxed |= PALMAS_GPIO_4_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_5_MASK))
		palmas->gpio_muxed |= PALMAS_GPIO_5_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_6))
		palmas->gpio_muxed |= PALMAS_GPIO_6_MUXED;
	if (!(reg & PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_7_MASK))
		palmas->gpio_muxed |= PALMAS_GPIO_7_MUXED;

	FUNC6(palmas->dev, "Muxing GPIO %x, PWM %x, LED %x\n",
			palmas->gpio_muxed, palmas->pwm_muxed,
			palmas->led_muxed);

	reg = pdata->power_ctrl;

	slave = FUNC2(PALMAS_PMU_CONTROL_BASE);
	addr = FUNC1(PALMAS_PMU_CONTROL_BASE, PALMAS_POWER_CTRL);

	ret = FUNC21(palmas->regmap[slave], addr, reg);
	if (ret)
		goto err_irq;

	/*
	 * If we are probing with DT do this the DT way and return here
	 * otherwise continue and add devices using mfd helpers.
	 */
	if (node) {
		ret = FUNC9(&i2c->dev);
		if (ret < 0) {
			goto err_irq;
		} else if (pdata->pm_off && !pm_power_off) {
			palmas_dev = palmas;
			pm_power_off = palmas_power_off;
		}
	}

	return ret;

err_irq:
	FUNC19(palmas->irq, palmas->irq_data);
err_i2c:
	for (i = 1; i < PALMAS_NUM_CLIENTS; i++) {
		if (palmas->i2c_clients[i])
			FUNC13(palmas->i2c_clients[i]);
	}
	return ret;
}