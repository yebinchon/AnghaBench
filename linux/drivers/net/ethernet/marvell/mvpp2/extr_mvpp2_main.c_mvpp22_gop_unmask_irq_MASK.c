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
struct mvpp2_port {scalar_t__ phy_interface; scalar_t__ gop_id; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MVPP22_GMAC_INT_SUM_MASK ; 
 int /*<<< orphan*/  MVPP22_GMAC_INT_SUM_MASK_LINK_STAT ; 
 scalar_t__ MVPP22_XLG_EXT_INT_MASK ; 
 int /*<<< orphan*/  MVPP22_XLG_EXT_INT_MASK_GIG ; 
 int /*<<< orphan*/  MVPP22_XLG_EXT_INT_MASK_XLG ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mvpp2_port *port)
{
	u32 val;

	if (FUNC2(port->phy_interface) ||
	    FUNC1(port->phy_interface) ||
	    port->phy_interface == PHY_INTERFACE_MODE_SGMII) {
		/* Enable the GMAC link status irq for this port */
		val = FUNC3(port->base + MVPP22_GMAC_INT_SUM_MASK);
		val |= MVPP22_GMAC_INT_SUM_MASK_LINK_STAT;
		FUNC4(val, port->base + MVPP22_GMAC_INT_SUM_MASK);
	}

	if (port->gop_id == 0) {
		/* Enable the XLG/GIG irqs for this port */
		val = FUNC3(port->base + MVPP22_XLG_EXT_INT_MASK);
		if (FUNC0(port->phy_interface))
			val |= MVPP22_XLG_EXT_INT_MASK_XLG;
		else
			val |= MVPP22_XLG_EXT_INT_MASK_GIG;
		FUNC4(val, port->base + MVPP22_XLG_EXT_INT_MASK);
	}
}