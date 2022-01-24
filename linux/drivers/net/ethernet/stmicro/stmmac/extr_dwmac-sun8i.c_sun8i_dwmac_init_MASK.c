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
struct sunxi_priv_data {scalar_t__ regulator; int /*<<< orphan*/  tx_clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev, void *priv)
{
	struct sunxi_priv_data *gmac = priv;
	int ret;

	if (gmac->regulator) {
		ret = FUNC3(gmac->regulator);
		if (ret) {
			FUNC1(&pdev->dev, "Fail to enable regulator\n");
			return ret;
		}
	}

	ret = FUNC0(gmac->tx_clk);
	if (ret) {
		if (gmac->regulator)
			FUNC2(gmac->regulator);
		FUNC1(&pdev->dev, "Could not enable AHB clock\n");
		return ret;
	}

	return 0;
}