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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct img_ir_priv {int irq; void* sys_clk; void* clk; void* reg_base; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct img_ir_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  img_ir_isr ; 
 int FUNC10 (struct img_ir_priv*) ; 
 int FUNC11 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct img_ir_priv*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct img_ir_priv*) ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct img_ir_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct img_ir_priv *priv;
	struct resource *res_regs;
	int irq, error, error2;

	/* Get resources from platform device */
	irq = FUNC15(pdev, 0);
	if (irq < 0)
		return irq;

	/* Private driver data */
	priv = FUNC8(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC17(pdev, priv);
	priv->dev = &pdev->dev;
	FUNC19(&priv->lock);

	/* Ioremap the registers */
	res_regs = FUNC16(pdev, IORESOURCE_MEM, 0);
	priv->reg_base = FUNC7(&pdev->dev, res_regs);
	if (FUNC0(priv->reg_base))
		return FUNC1(priv->reg_base);

	/* Get core clock */
	priv->clk = FUNC6(&pdev->dev, "core");
	if (FUNC0(priv->clk))
		FUNC5(&pdev->dev, "cannot get core clock resource\n");

	/* Get sys clock */
	priv->sys_clk = FUNC6(&pdev->dev, "sys");
	if (FUNC0(priv->sys_clk))
		FUNC5(&pdev->dev, "cannot get sys clock resource\n");
	/*
	 * Enabling the system clock before the register interface is
	 * accessed. ISR shouldn't get called with Sys Clock disabled,
	 * hence exiting probe with an error.
	 */
	if (!FUNC0(priv->sys_clk)) {
		error = FUNC3(priv->sys_clk);
		if (error) {
			FUNC4(&pdev->dev, "cannot enable sys clock\n");
			return error;
		}
	}

	/* Set up raw & hw decoder */
	error = FUNC11(priv);
	error2 = FUNC10(priv);
	if (error && error2) {
		if (error == -ENODEV)
			error = error2;
		goto err_probe;
	}

	/* Get the IRQ */
	priv->irq = irq;
	error = FUNC18(priv->irq, img_ir_isr, 0, "img-ir", priv);
	if (error) {
		FUNC4(&pdev->dev, "cannot register IRQ %u\n",
			priv->irq);
		error = -EIO;
		goto err_irq;
	}

	FUNC9(priv);
	FUNC14(priv);

	return 0;

err_irq:
	FUNC12(priv);
	FUNC13(priv);
err_probe:
	if (!FUNC0(priv->sys_clk))
		FUNC2(priv->sys_clk);
	return error;
}