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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct netsec_priv {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ACPI ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
			     struct netsec_priv *priv, u32 *phy_addr)
{
	int ret;

	if (!FUNC0(CONFIG_ACPI))
		return -ENODEV;

	ret = FUNC2(&pdev->dev, "phy-channel", phy_addr);
	if (ret) {
		FUNC1(&pdev->dev,
			"missing required property 'phy-channel'\n");
		return ret;
	}

	ret = FUNC2(&pdev->dev,
				       "socionext,phy-clock-frequency",
				       &priv->freq);
	if (ret)
		FUNC1(&pdev->dev,
			"missing required property 'socionext,phy-clock-frequency'\n");
	return ret;
}