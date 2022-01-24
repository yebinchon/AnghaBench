#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vexpress_syscfg {int /*<<< orphan*/  base; int /*<<< orphan*/  funcs; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct vexpress_syscfg* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vexpress_syscfg*) ; 
 int /*<<< orphan*/  vexpress_syscfg_bridge_ops ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct vexpress_syscfg *syscfg;
	struct resource *res;
	struct device *bridge;

	syscfg = FUNC5(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
	if (!syscfg)
		return -ENOMEM;
	syscfg->dev = &pdev->dev;
	FUNC0(&syscfg->funcs);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	syscfg->base = FUNC4(&pdev->dev, res);
	if (FUNC1(syscfg->base))
		return FUNC2(syscfg->base);

	/* Must use dev.parent (MFD), as that's where DT phandle points at... */
	bridge = FUNC7(pdev->dev.parent,
			&vexpress_syscfg_bridge_ops, syscfg);

	return FUNC3(bridge);
}