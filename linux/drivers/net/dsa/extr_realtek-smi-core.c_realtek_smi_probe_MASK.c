#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct realtek_smi_variant {int /*<<< orphan*/  ds_ops; TYPE_1__* ops; int /*<<< orphan*/  cmd_write; int /*<<< orphan*/  cmd_read; int /*<<< orphan*/  clk_delay; } ;
struct realtek_smi {TYPE_2__* ds; int /*<<< orphan*/  num_ports; TYPE_1__* ops; int /*<<< orphan*/  leds_disabled; void* mdio; void* mdc; void* reset; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_write; int /*<<< orphan*/  cmd_read; int /*<<< orphan*/  clk_delay; struct device* dev; void* map; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ops; struct realtek_smi* priv; } ;
struct TYPE_4__ {int (* detect ) (struct realtek_smi*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  REALTEK_SMI_HW_START_DELAY ; 
 int /*<<< orphan*/  REALTEK_SMI_HW_STOP_DELAY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct realtek_smi*) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct realtek_smi* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ *,struct realtek_smi*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct realtek_smi_variant* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*) ; 
 int /*<<< orphan*/  realtek_smi_mdio_regmap_config ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct realtek_smi*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	const struct realtek_smi_variant *var;
	struct device *dev = &pdev->dev;
	struct realtek_smi *smi;
	struct device_node *np;
	int ret;

	var = FUNC12(dev);
	np = dev->of_node;

	smi = FUNC6(dev, sizeof(*smi), GFP_KERNEL);
	if (!smi)
		return -ENOMEM;
	smi->map = FUNC7(dev, NULL, smi,
				    &realtek_smi_mdio_regmap_config);
	if (FUNC0(smi->map)) {
		ret = FUNC1(smi->map);
		FUNC2(dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	/* Link forward and backward */
	smi->dev = dev;
	smi->clk_delay = var->clk_delay;
	smi->cmd_read = var->cmd_read;
	smi->cmd_write = var->cmd_write;
	smi->ops = var->ops;

	FUNC4(dev, smi);
	FUNC14(&smi->lock);

	/* TODO: if power is software controlled, set up any regulators here */

	/* Assert then deassert RESET */
	smi->reset = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(smi->reset)) {
		FUNC2(dev, "failed to get RESET GPIO\n");
		return FUNC1(smi->reset);
	}
	FUNC11(REALTEK_SMI_HW_STOP_DELAY);
	FUNC10(smi->reset, 0);
	FUNC11(REALTEK_SMI_HW_START_DELAY);
	FUNC3(dev, "deasserted RESET\n");

	/* Fetch MDIO pins */
	smi->mdc = FUNC5(dev, "mdc", GPIOD_OUT_LOW);
	if (FUNC0(smi->mdc))
		return FUNC1(smi->mdc);
	smi->mdio = FUNC5(dev, "mdio", GPIOD_OUT_LOW);
	if (FUNC0(smi->mdio))
		return FUNC1(smi->mdio);

	smi->leds_disabled = FUNC13(np, "realtek,disable-leds");

	ret = smi->ops->detect(smi);
	if (ret) {
		FUNC2(dev, "unable to detect switch\n");
		return ret;
	}

	smi->ds = FUNC9(dev, smi->num_ports);
	if (!smi->ds)
		return -ENOMEM;
	smi->ds->priv = smi;

	smi->ds->ops = var->ds_ops;
	ret = FUNC8(smi->ds);
	if (ret) {
		FUNC2(dev, "unable to register switch ret = %d\n", ret);
		return ret;
	}
	return 0;
}