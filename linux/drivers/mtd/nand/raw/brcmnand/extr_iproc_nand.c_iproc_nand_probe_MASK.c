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
struct brcmnand_soc {int /*<<< orphan*/  prepare_data_bus; int /*<<< orphan*/  ctlrdy_set_enabled; int /*<<< orphan*/  ctlrdy_ack; } ;
struct iproc_nand_soc {void* ext_base; void* idm_base; int /*<<< orphan*/  idm_lock; struct brcmnand_soc soc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct platform_device*,struct brcmnand_soc*) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 struct iproc_nand_soc* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iproc_nand_apb_access ; 
 int /*<<< orphan*/  iproc_nand_intc_ack ; 
 int /*<<< orphan*/  iproc_nand_intc_set ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct iproc_nand_soc *priv;
	struct brcmnand_soc *soc;
	struct resource *res;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	soc = &priv->soc;

	FUNC6(&priv->idm_lock);

	res = FUNC5(pdev, IORESOURCE_MEM, "iproc-idm");
	priv->idm_base = FUNC3(dev, res);
	if (FUNC0(priv->idm_base))
		return FUNC1(priv->idm_base);

	res = FUNC5(pdev, IORESOURCE_MEM, "iproc-ext");
	priv->ext_base = FUNC3(dev, res);
	if (FUNC0(priv->ext_base))
		return FUNC1(priv->ext_base);

	soc->ctlrdy_ack = iproc_nand_intc_ack;
	soc->ctlrdy_set_enabled = iproc_nand_intc_set;
	soc->prepare_data_bus = iproc_nand_apb_access;

	return FUNC2(pdev, soc);
}