#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct enetc_pf {int dummy; } ;
struct enetc_ndev_priv {struct device_node* phy_node; TYPE_1__* dev; scalar_t__ if_mode; int /*<<< orphan*/  si; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (struct enetc_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_pf*) ; 
 struct enetc_pf* FUNC3 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC4 (struct device_node*,char*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 scalar_t__ FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*) ; 

__attribute__((used)) static int FUNC12(struct enetc_ndev_priv *priv)
{
	struct enetc_pf *pf = FUNC3(priv->si);
	struct device_node *np = priv->dev->of_node;
	struct device_node *mdio_np;
	int err;

	if (!np) {
		FUNC0(priv->dev, "missing ENETC port node\n");
		return -ENODEV;
	}

	priv->phy_node = FUNC8(np, "phy-handle", 0);
	if (!priv->phy_node) {
		if (!FUNC10(np)) {
			FUNC0(priv->dev, "PHY not specified\n");
			return -ENODEV;
		}

		err = FUNC11(np);
		if (err < 0) {
			FUNC0(priv->dev, "fixed link registration failed\n");
			return err;
		}

		priv->phy_node = FUNC6(np);
	}

	mdio_np = FUNC4(np, "mdio");
	if (mdio_np) {
		FUNC7(mdio_np);
		err = FUNC1(pf);
		if (err) {
			FUNC7(priv->phy_node);
			return err;
		}
	}

	priv->if_mode = FUNC5(np);
	if ((int)priv->if_mode < 0) {
		FUNC0(priv->dev, "missing phy type\n");
		FUNC7(priv->phy_node);
		if (FUNC10(np))
			FUNC9(np);
		else
			FUNC2(pf);

		return -EINVAL;
	}

	return 0;
}