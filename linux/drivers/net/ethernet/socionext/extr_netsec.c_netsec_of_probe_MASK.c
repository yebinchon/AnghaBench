#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct netsec_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  freq; int /*<<< orphan*/  phy_np; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
			   struct netsec_priv *priv, u32 *phy_addr)
{
	priv->phy_np = FUNC6(pdev->dev.of_node, "phy-handle", 0);
	if (!priv->phy_np) {
		FUNC3(&pdev->dev, "missing required property 'phy-handle'\n");
		return -EINVAL;
	}

	*phy_addr = FUNC5(&pdev->dev, priv->phy_np);

	priv->clk = FUNC4(&pdev->dev, NULL); /* get by 'phy_ref_clk' */
	if (FUNC0(priv->clk)) {
		FUNC3(&pdev->dev, "phy_ref_clk not found\n");
		return FUNC1(priv->clk);
	}
	priv->freq = FUNC2(priv->clk);

	return 0;
}