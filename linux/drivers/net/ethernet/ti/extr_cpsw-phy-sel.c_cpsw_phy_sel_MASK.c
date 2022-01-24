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
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct cpsw_phy_sel_priv {int /*<<< orphan*/  (* cpsw_phy_sel ) (struct cpsw_phy_sel_priv*,int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct cpsw_phy_sel_priv* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  match ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_phy_sel_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct device *dev, phy_interface_t phy_mode, int slave)
{
	struct device_node *node;
	struct cpsw_phy_sel_priv *priv;

	node = FUNC5(dev->of_node, "cpsw-phy-sel", 0);
	if (!node) {
		node = FUNC3(dev->of_node, "cpsw-phy-sel");
		if (!node) {
			FUNC1(dev, "Phy mode driver DT not found\n");
			return;
		}
	}

	dev = FUNC0(&platform_bus_type, NULL, node, match);
	if (!dev) {
		FUNC1(dev, "unable to find platform device for %pOF\n", node);
		goto out;
	}

	priv = FUNC2(dev);

	priv->cpsw_phy_sel(priv, phy_mode, slave);

	FUNC6(dev);
out:
	FUNC4(node);
}