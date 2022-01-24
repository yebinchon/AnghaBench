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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvpanic_panic_nb ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct resource *mem;

	mem = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!mem)
		return -EINVAL;

	base = FUNC3(&pdev->dev, mem);
	if (FUNC0(base))
		return FUNC1(base);

	FUNC2(&panic_notifier_list,
				       &pvpanic_panic_nb);

	return 0;
}