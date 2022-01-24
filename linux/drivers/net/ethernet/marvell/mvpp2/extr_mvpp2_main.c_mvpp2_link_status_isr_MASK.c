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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {scalar_t__ gop_id; scalar_t__ phy_interface; scalar_t__ phylink; scalar_t__ base; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MVPP22_GMAC_INT_STAT ; 
 int MVPP22_GMAC_INT_STAT_LINK ; 
 scalar_t__ MVPP22_XLG_INT_STAT ; 
 int MVPP22_XLG_INT_STAT_LINK ; 
 scalar_t__ MVPP22_XLG_STATUS ; 
 int MVPP22_XLG_STATUS_LINK_UP ; 
 scalar_t__ MVPP2_GMAC_STATUS0 ; 
 int MVPP2_GMAC_STATUS0_LINK_UP ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int FUNC17 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	struct mvpp2_port *port = (struct mvpp2_port *)dev_id;
	struct net_device *dev = port->dev;
	bool event = false, link = false;
	u32 val;

	FUNC0(port);

	if (port->gop_id == 0 && FUNC8(port->phy_interface)) {
		val = FUNC17(port->base + MVPP22_XLG_INT_STAT);
		if (val & MVPP22_XLG_INT_STAT_LINK) {
			event = true;
			val = FUNC17(port->base + MVPP22_XLG_STATUS);
			if (val & MVPP22_XLG_STATUS_LINK_UP)
				link = true;
		}
	} else if (FUNC15(port->phy_interface) ||
		   FUNC14(port->phy_interface) ||
		   port->phy_interface == PHY_INTERFACE_MODE_SGMII) {
		val = FUNC17(port->base + MVPP22_GMAC_INT_STAT);
		if (val & MVPP22_GMAC_INT_STAT_LINK) {
			event = true;
			val = FUNC17(port->base + MVPP2_GMAC_STATUS0);
			if (val & MVPP2_GMAC_STATUS0_LINK_UP)
				link = true;
		}
	}

	if (port->phylink) {
		FUNC16(port->phylink, link);
		goto handled;
	}

	if (!FUNC11(dev) || !event)
		goto handled;

	if (link) {
		FUNC7(port);

		FUNC3(port);
		FUNC5(port);
		FUNC10(dev);
		FUNC13(dev);
	} else {
		FUNC12(dev);
		FUNC9(dev);
		FUNC4(port);
		FUNC2(port);

		FUNC6(port);
	}

handled:
	FUNC1(port);
	return IRQ_HANDLED;
}