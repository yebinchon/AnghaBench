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
struct mvpp2_port {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP22_XLG_CTRL0_FORCE_LINK_DOWN ; 
 int /*<<< orphan*/  MVPP22_XLG_CTRL0_FORCE_LINK_PASS ; 
 scalar_t__ MVPP22_XLG_CTRL0_REG ; 
 scalar_t__ MVPP2_GMAC_AUTONEG_CONFIG ; 
 int /*<<< orphan*/  MVPP2_GMAC_FORCE_LINK_DOWN ; 
 int /*<<< orphan*/  MVPP2_GMAC_FORCE_LINK_PASS ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 struct mvpp2_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct phylink_config *config, unsigned int mode,
			      phy_interface_t interface, struct phy_device *phy)
{
	struct net_device *dev = FUNC8(config->dev);
	struct mvpp2_port *port = FUNC4(dev);
	u32 val;

	if (!FUNC6(mode)) {
		if (FUNC2(interface)) {
			val = FUNC7(port->base + MVPP22_XLG_CTRL0_REG);
			val &= ~MVPP22_XLG_CTRL0_FORCE_LINK_DOWN;
			val |= MVPP22_XLG_CTRL0_FORCE_LINK_PASS;
			FUNC9(val, port->base + MVPP22_XLG_CTRL0_REG);
		} else {
			val = FUNC7(port->base + MVPP2_GMAC_AUTONEG_CONFIG);
			val &= ~MVPP2_GMAC_FORCE_LINK_DOWN;
			val |= MVPP2_GMAC_FORCE_LINK_PASS;
			FUNC9(val, port->base + MVPP2_GMAC_AUTONEG_CONFIG);
		}
	}

	FUNC3(port);

	FUNC0(port);
	FUNC1(port);
	FUNC5(dev);
}