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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct jme_adapter {int reg_txpfc; int reg_rxmcs; int /*<<< orphan*/  phy_lock; TYPE_1__ mii_if; int /*<<< orphan*/  dev; int /*<<< orphan*/  rxmcs_lock; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  JME_RXMCS ; 
 int /*<<< orphan*/  JME_TXPFC ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int RXMCS_FLOWCTRL ; 
 int TXPFC_PF_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 struct jme_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev,
			struct ethtool_pauseparam *ecmd)
{
	struct jme_adapter *jme = FUNC3(netdev);
	u32 val;

	if (((jme->reg_txpfc & TXPFC_PF_EN) != 0) ^
		(ecmd->tx_pause != 0)) {

		if (ecmd->tx_pause)
			jme->reg_txpfc |= TXPFC_PF_EN;
		else
			jme->reg_txpfc &= ~TXPFC_PF_EN;

		FUNC2(jme, JME_TXPFC, jme->reg_txpfc);
	}

	FUNC4(&jme->rxmcs_lock);
	if (((jme->reg_rxmcs & RXMCS_FLOWCTRL) != 0) ^
		(ecmd->rx_pause != 0)) {

		if (ecmd->rx_pause)
			jme->reg_rxmcs |= RXMCS_FLOWCTRL;
		else
			jme->reg_rxmcs &= ~RXMCS_FLOWCTRL;

		FUNC2(jme, JME_RXMCS, jme->reg_rxmcs);
	}
	FUNC5(&jme->rxmcs_lock);

	FUNC4(&jme->phy_lock);
	val = FUNC0(jme->dev, jme->mii_if.phy_id, MII_ADVERTISE);
	if (((val & (ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM)) != 0) ^
		(ecmd->autoneg != 0)) {

		if (ecmd->autoneg)
			val |= (ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);
		else
			val &= ~(ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);

		FUNC1(jme->dev, jme->mii_if.phy_id,
				MII_ADVERTISE, val);
	}
	FUNC5(&jme->phy_lock);

	return 0;
}