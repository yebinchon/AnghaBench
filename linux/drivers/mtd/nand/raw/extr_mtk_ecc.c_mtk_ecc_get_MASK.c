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
struct mtk_ecc {int /*<<< orphan*/  clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct mtk_ecc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_ecc*) ; 
 struct platform_device* FUNC3 (struct device_node*) ; 
 struct mtk_ecc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mtk_ecc *FUNC6(struct device_node *np)
{
	struct platform_device *pdev;
	struct mtk_ecc *ecc;

	pdev = FUNC3(np);
	if (!pdev)
		return FUNC0(-EPROBE_DEFER);

	ecc = FUNC4(pdev);
	if (!ecc) {
		FUNC5(&pdev->dev);
		return FUNC0(-EPROBE_DEFER);
	}

	FUNC1(ecc->clk);
	FUNC2(ecc);

	return ecc;
}