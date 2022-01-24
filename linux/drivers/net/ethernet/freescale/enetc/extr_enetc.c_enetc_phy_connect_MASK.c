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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  if_mode; int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  adjust_link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct enetc_ndev_priv* FUNC1 (struct net_device*) ; 
 struct phy_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct enetc_ndev_priv *priv = FUNC1(ndev);
	struct phy_device *phydev;

	if (!priv->phy_node)
		return 0; /* phy-less mode */

	phydev = FUNC2(ndev, priv->phy_node, &adjust_link,
				0, priv->if_mode);
	if (!phydev) {
		FUNC0(&ndev->dev, "could not attach to PHY\n");
		return -ENODEV;
	}

	FUNC3(phydev);

	return 0;
}