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
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int eee_active; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_GMAC_AUTONEG_CONFIG ; 
 int /*<<< orphan*/  MVNETA_GMAC_FORCE_LINK_DOWN ; 
 int /*<<< orphan*/  MVNETA_GMAC_FORCE_LINK_PASS ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvneta_port* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct phylink_config *config, unsigned int mode,
			       phy_interface_t interface,
			       struct phy_device *phy)
{
	struct net_device *ndev = FUNC7(config->dev);
	struct mvneta_port *pp = FUNC4(ndev);
	u32 val;

	if (!FUNC6(mode)) {
		val = FUNC2(pp, MVNETA_GMAC_AUTONEG_CONFIG);
		val &= ~MVNETA_GMAC_FORCE_LINK_DOWN;
		val |= MVNETA_GMAC_FORCE_LINK_PASS;
		FUNC3(pp, MVNETA_GMAC_AUTONEG_CONFIG, val);
	}

	FUNC0(pp);

	if (phy && pp->eee_enabled) {
		pp->eee_active = FUNC5(phy, 0) >= 0;
		FUNC1(pp, pp->eee_active && pp->tx_lpi_enabled);
	}
}