#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev; TYPE_2__* phydev; } ;
struct fec_enet_private {int quirks; int wol_flag; TYPE_1__* pdev; int /*<<< orphan*/  napi; } ;
struct TYPE_5__ {scalar_t__ drv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FEC_QUIRK_ERR006687 ; 
 int FEC_WOL_FLAG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC8(ndev);
	int ret;
	bool reset_again;

	ret = FUNC14(&fep->pdev->dev);
	if (ret < 0)
		return ret;

	FUNC12(&fep->pdev->dev);
	ret = FUNC2(ndev, true);
	if (ret)
		goto clk_enable;

	/* During the first fec_enet_open call the PHY isn't probed at this
	 * point. Therefore the phy_reset_after_clk_enable() call within
	 * fec_enet_clk_enable() fails. As we need this reset in order to be
	 * sure the PHY is working correctly we check if we need to reset again
	 * later when the PHY is probed
	 */
	if (ndev->phydev && ndev->phydev->drv)
		reset_again = false;
	else
		reset_again = true;

	/* I should reset the ring buffers here, but I don't yet know
	 * a simple way to do that.
	 */

	ret = FUNC1(ndev);
	if (ret)
		goto err_enet_alloc;

	/* Init MAC prior to mii bus probe */
	FUNC5(ndev);

	/* Probe and connect to PHY when open the interface */
	ret = FUNC4(ndev);
	if (ret)
		goto err_enet_mii_probe;

	/* Call phy_reset_after_clk_enable() again if it failed during
	 * phy_reset_after_clk_enable() before because the PHY wasn't probed.
	 */
	if (reset_again)
		FUNC10(ndev->phydev);

	if (fep->quirks & FEC_QUIRK_ERR006687)
		FUNC6();

	FUNC7(&fep->napi);
	FUNC11(ndev->phydev);
	FUNC9(ndev);

	FUNC0(&ndev->dev, fep->wol_flag &
				 FEC_WOL_FLAG_ENABLE);

	return 0;

err_enet_mii_probe:
	FUNC3(ndev);
err_enet_alloc:
	FUNC2(ndev, false);
clk_enable:
	FUNC15(&fep->pdev->dev);
	FUNC16(&fep->pdev->dev);
	FUNC13(&fep->pdev->dev);
	return ret;
}