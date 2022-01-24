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
struct bcm6368_nand_soc {scalar_t__ base; struct brcmnand_soc soc; } ;

/* Variables and functions */
 scalar_t__ BCM6368_NAND_INT ; 
 int /*<<< orphan*/  BCM6368_NAND_STATUS_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  bcm6368_nand_intc_ack ; 
 int /*<<< orphan*/  bcm6368_nand_intc_set ; 
 int FUNC2 (struct platform_device*,struct brcmnand_soc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct device*,struct resource*) ; 
 struct bcm6368_nand_soc* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm6368_nand_soc *priv;
	struct brcmnand_soc *soc;
	struct resource *res;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	soc = &priv->soc;

	res = FUNC6(pdev,
		IORESOURCE_MEM, "nand-int-base");
	priv->base = FUNC4(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	soc->ctlrdy_ack = bcm6368_nand_intc_ack;
	soc->ctlrdy_set_enabled = bcm6368_nand_intc_set;

	/* Disable and ack all interrupts  */
	FUNC3(0, priv->base + BCM6368_NAND_INT);
	FUNC3(BCM6368_NAND_STATUS_MASK,
			priv->base + BCM6368_NAND_INT);

	return FUNC2(pdev, soc);
}