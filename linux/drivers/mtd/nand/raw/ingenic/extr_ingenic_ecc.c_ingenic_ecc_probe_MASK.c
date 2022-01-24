#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ingenic_ecc {struct device* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; TYPE_1__* ops; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct ingenic_ecc*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct ingenic_ecc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ingenic_ecc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ingenic_ecc*) ; 

int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ingenic_ecc *ecc;
	struct resource *res;

	ecc = FUNC6(dev, sizeof(*ecc), GFP_KERNEL);
	if (!ecc)
		return -ENOMEM;

	ecc->ops = FUNC3(dev);
	if (!ecc->ops)
		return -EINVAL;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	ecc->base = FUNC5(dev, res);
	if (FUNC0(ecc->base))
		return FUNC1(ecc->base);

	ecc->ops->disable(ecc);

	ecc->clk = FUNC4(dev, NULL);
	if (FUNC0(ecc->clk)) {
		FUNC2(dev, "failed to get clock: %ld\n", FUNC1(ecc->clk));
		return FUNC1(ecc->clk);
	}

	FUNC7(&ecc->lock);

	ecc->dev = dev;
	FUNC9(pdev, ecc);

	return 0;
}