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
struct mvpp2_port {scalar_t__ gop_id; int /*<<< orphan*/  phy_interface; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP22_XLG_CTRL3_MACMODESELECT_10G ; 
 int /*<<< orphan*/  MVPP22_XLG_CTRL3_MACMODESELECT_GMAC ; 
 int /*<<< orphan*/  MVPP22_XLG_CTRL3_MACMODESELECT_MASK ; 
 scalar_t__ MVPP22_XLG_CTRL3_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mvpp2_port *port)
{
	u32 ctrl3;

	/* Set the GMAC & XLG MAC in reset */
	FUNC6(port);

	/* Set the MPCS and XPCS in reset */
	FUNC2(port);

	/* comphy reconfiguration */
	FUNC0(port);

	/* gop reconfiguration */
	FUNC1(port);

	FUNC3(port);

	/* Only GOP port 0 has an XLG MAC */
	if (port->gop_id == 0) {
		ctrl3 = FUNC8(port->base + MVPP22_XLG_CTRL3_REG);
		ctrl3 &= ~MVPP22_XLG_CTRL3_MACMODESELECT_MASK;

		if (FUNC5(port->phy_interface))
			ctrl3 |= MVPP22_XLG_CTRL3_MACMODESELECT_10G;
		else
			ctrl3 |= MVPP22_XLG_CTRL3_MACMODESELECT_GMAC;

		FUNC9(ctrl3, port->base + MVPP22_XLG_CTRL3_REG);
	}

	if (port->gop_id == 0 && FUNC5(port->phy_interface))
		FUNC7(port);
	else
		FUNC4(port);
}