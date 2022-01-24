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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ingenic_ecc {int /*<<< orphan*/  clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct ingenic_ecc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC3 (struct device_node*) ; 
 struct ingenic_ecc* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static struct ingenic_ecc *FUNC5(struct device_node *np)
{
	struct platform_device *pdev;
	struct ingenic_ecc *ecc;

	pdev = FUNC3(np);
	if (!pdev || !FUNC4(pdev))
		return FUNC0(-EPROBE_DEFER);

	FUNC2(&pdev->dev);

	ecc = FUNC4(pdev);
	FUNC1(ecc->clk);

	return ecc;
}