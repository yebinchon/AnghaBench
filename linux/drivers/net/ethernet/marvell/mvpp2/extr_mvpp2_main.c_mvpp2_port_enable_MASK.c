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
struct mvpp2_port {scalar_t__ gop_id; scalar_t__ base; int /*<<< orphan*/  phy_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP22_XLG_CTRL0_MIB_CNT_DIS ; 
 int /*<<< orphan*/  MVPP22_XLG_CTRL0_PORT_EN ; 
 scalar_t__ MVPP22_XLG_CTRL0_REG ; 
 scalar_t__ MVPP2_GMAC_CTRL_0_REG ; 
 int /*<<< orphan*/  MVPP2_GMAC_MIB_CNTR_EN_MASK ; 
 int /*<<< orphan*/  MVPP2_GMAC_PORT_EN_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_port *port)
{
	u32 val;

	/* Only GOP port 0 has an XLG MAC */
	if (port->gop_id == 0 && FUNC0(port->phy_interface)) {
		val = FUNC1(port->base + MVPP22_XLG_CTRL0_REG);
		val |= MVPP22_XLG_CTRL0_PORT_EN;
		val &= ~MVPP22_XLG_CTRL0_MIB_CNT_DIS;
		FUNC2(val, port->base + MVPP22_XLG_CTRL0_REG);
	} else {
		val = FUNC1(port->base + MVPP2_GMAC_CTRL_0_REG);
		val |= MVPP2_GMAC_PORT_EN_MASK;
		val |= MVPP2_GMAC_MIB_CNTR_EN_MASK;
		FUNC2(val, port->base + MVPP2_GMAC_CTRL_0_REG);
	}
}