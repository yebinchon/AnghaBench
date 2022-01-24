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
struct mediatek_dwmac_variant {int /*<<< orphan*/  num_clks; } ;
struct mediatek_dwmac_plat_data {int /*<<< orphan*/  clks; struct mediatek_dwmac_variant* variant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev, void *priv)
{
	struct mediatek_dwmac_plat_data *plat = priv;
	const struct mediatek_dwmac_variant *variant = plat->variant;

	FUNC0(variant->num_clks, plat->clks);

	FUNC2(&pdev->dev);
	FUNC1(&pdev->dev);
}