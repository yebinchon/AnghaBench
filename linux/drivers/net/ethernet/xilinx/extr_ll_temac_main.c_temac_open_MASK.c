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
struct temac_local {int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_name; int /*<<< orphan*/  ndev; scalar_t__ phy_node; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ll_temac_rx_irq ; 
 int /*<<< orphan*/  ll_temac_tx_irq ; 
 struct temac_local* FUNC5 (struct net_device*) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temac_adjust_link ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct temac_local *lp = FUNC5(ndev);
	struct phy_device *phydev = NULL;
	int rc;

	FUNC2(&ndev->dev, "temac_open()\n");

	if (lp->phy_node) {
		phydev = FUNC6(lp->ndev, lp->phy_node,
					temac_adjust_link, 0, 0);
		if (!phydev) {
			FUNC3(lp->dev, "of_phy_connect() failed\n");
			return -ENODEV;
		}
		FUNC9(phydev);
	} else if (FUNC11(lp->phy_name) > 0) {
		phydev = FUNC7(lp->ndev, lp->phy_name, temac_adjust_link,
				     lp->phy_interface);
		if (FUNC0(phydev)) {
			FUNC3(lp->dev, "phy_connect() failed\n");
			return FUNC1(phydev);
		}
		FUNC9(phydev);
	}

	FUNC12(ndev);

	rc = FUNC10(lp->tx_irq, ll_temac_tx_irq, 0, ndev->name, ndev);
	if (rc)
		goto err_tx_irq;
	rc = FUNC10(lp->rx_irq, ll_temac_rx_irq, 0, ndev->name, ndev);
	if (rc)
		goto err_rx_irq;

	return 0;

 err_rx_irq:
	FUNC4(lp->tx_irq, ndev);
 err_tx_irq:
	if (phydev)
		FUNC8(phydev);
	FUNC3(lp->dev, "request_irq() failed\n");
	return rc;
}