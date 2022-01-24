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
struct rcar_csi2 {int /*<<< orphan*/  rstc; int /*<<< orphan*/  base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcsi2_irq ; 
 int /*<<< orphan*/  rcsi2_irq_thread ; 

__attribute__((used)) static int FUNC8(struct rcar_csi2 *priv,
				 struct platform_device *pdev)
{
	struct resource *res;
	int irq, ret;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC3(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	irq = FUNC6(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC4(&pdev->dev, irq, rcsi2_irq,
					rcsi2_irq_thread, IRQF_SHARED,
					KBUILD_MODNAME, priv);
	if (ret)
		return ret;

	priv->rstc = FUNC5(&pdev->dev, NULL);

	return FUNC2(priv->rstc);
}