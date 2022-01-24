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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct brcmnand_soc {int /*<<< orphan*/  ctlrdy_set_enabled; int /*<<< orphan*/  ctlrdy_ack; } ;
struct bcm63138_nand_soc {int /*<<< orphan*/  base; struct brcmnand_soc soc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm63138_nand_intc_ack ; 
 int /*<<< orphan*/  bcm63138_nand_intc_set ; 
 int FUNC2 (struct platform_device*,struct brcmnand_soc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct bcm63138_nand_soc* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm63138_nand_soc *priv;
	struct brcmnand_soc *soc;
	struct resource *res;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	soc = &priv->soc;

	res = FUNC5(pdev, IORESOURCE_MEM, "nand-int-base");
	priv->base = FUNC3(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	soc->ctlrdy_ack = bcm63138_nand_intc_ack;
	soc->ctlrdy_set_enabled = bcm63138_nand_intc_set;

	return FUNC2(pdev, soc);
}