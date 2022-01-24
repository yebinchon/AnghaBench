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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct fec_enet_private {int /*<<< orphan*/  napi; int /*<<< orphan*/  pause_flag; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FEC_PAUSE_FLAG_AUTONEG ; 
 int /*<<< orphan*/  FEC_PAUSE_FLAG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev,
				   struct ethtool_pauseparam *pause)
{
	struct fec_enet_private *fep = FUNC5(ndev);

	if (!ndev->phydev)
		return -ENODEV;

	if (pause->tx_pause != pause->rx_pause) {
		FUNC4(ndev,
			"hardware only support enable/disable both tx and rx");
		return -EINVAL;
	}

	fep->pause_flag = 0;

	/* tx pause must be same as rx pause */
	fep->pause_flag |= pause->rx_pause ? FEC_PAUSE_FLAG_ENABLE : 0;
	fep->pause_flag |= pause->autoneg ? FEC_PAUSE_FLAG_AUTONEG : 0;

	FUNC10(ndev->phydev, pause->rx_pause, pause->tx_pause,
			  pause->autoneg);

	if (pause->autoneg) {
		if (FUNC6(ndev))
			FUNC1(ndev);
		FUNC11(ndev->phydev);
	}
	if (FUNC6(ndev)) {
		FUNC2(&fep->napi);
		FUNC7(ndev);
		FUNC0(ndev);
		FUNC9(ndev);
		FUNC8(ndev);
		FUNC3(&fep->napi);
	}

	return 0;
}