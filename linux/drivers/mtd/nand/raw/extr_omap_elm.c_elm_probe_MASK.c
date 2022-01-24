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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct elm_info {int /*<<< orphan*/  list; int /*<<< orphan*/  elm_completion; int /*<<< orphan*/  elm_base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct elm_info* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct elm_info*) ; 
 int /*<<< orphan*/  elm_devices ; 
 int /*<<< orphan*/  elm_isr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct elm_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int ret = 0;
	struct resource *res, *irq;
	struct elm_info *info;

	info = FUNC5(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;

	irq = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC3(&pdev->dev, "no irq resource defined\n");
		return -ENODEV;
	}

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	info->elm_base = FUNC4(&pdev->dev, res);
	if (FUNC1(info->elm_base))
		return FUNC2(info->elm_base);

	ret = FUNC6(&pdev->dev, irq->start, elm_isr, 0,
			pdev->name, info);
	if (ret) {
		FUNC3(&pdev->dev, "failure requesting %pr\n", irq);
		return ret;
	}

	FUNC12(&pdev->dev);
	if (FUNC13(&pdev->dev) < 0) {
		ret = -EINVAL;
		FUNC11(&pdev->dev);
		FUNC3(&pdev->dev, "can't enable clock\n");
		return ret;
	}

	FUNC7(&info->elm_completion);
	FUNC0(&info->list);
	FUNC8(&info->list, &elm_devices);
	FUNC10(pdev, info);
	return ret;
}