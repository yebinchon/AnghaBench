#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ flowctrl; scalar_t__ active_flowctrl; } ;
struct tg3 {int phy_flags; int /*<<< orphan*/  tx_mode; int /*<<< orphan*/  rx_mode; TYPE_1__ link_config; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  mdio_bus; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ FLOW_CTRL_RX ; 
 scalar_t__ FLOW_CTRL_TX ; 
 int /*<<< orphan*/  MAC_RX_MODE ; 
 int /*<<< orphan*/  MAC_TX_MODE ; 
 int /*<<< orphan*/  PAUSE_AUTONEG ; 
 int /*<<< orphan*/  RX_MODE_FLOW_CTRL_ENABLE ; 
 int TG3_PHYFLG_ANY_SERDES ; 
 int /*<<< orphan*/  TX_MODE_FLOW_CTRL_ENABLE ; 
 int /*<<< orphan*/  USE_PHYLIB ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp, u32 lcladv, u32 rmtadv)
{
	u8 autoneg;
	u8 flowctrl = 0;
	u32 old_rx_mode = tp->rx_mode;
	u32 old_tx_mode = tp->tx_mode;

	if (FUNC2(tp, USE_PHYLIB))
		autoneg = FUNC0(tp->mdio_bus, tp->phy_addr)->autoneg;
	else
		autoneg = tp->link_config.autoneg;

	if (autoneg == AUTONEG_ENABLE && FUNC2(tp, PAUSE_AUTONEG)) {
		if (tp->phy_flags & TG3_PHYFLG_ANY_SERDES)
			flowctrl = FUNC3(lcladv, rmtadv);
		else
			flowctrl = FUNC1(lcladv, rmtadv);
	} else
		flowctrl = tp->link_config.flowctrl;

	tp->link_config.active_flowctrl = flowctrl;

	if (flowctrl & FLOW_CTRL_RX)
		tp->rx_mode |= RX_MODE_FLOW_CTRL_ENABLE;
	else
		tp->rx_mode &= ~RX_MODE_FLOW_CTRL_ENABLE;

	if (old_rx_mode != tp->rx_mode)
		FUNC4(MAC_RX_MODE, tp->rx_mode);

	if (flowctrl & FLOW_CTRL_TX)
		tp->tx_mode |= TX_MODE_FLOW_CTRL_ENABLE;
	else
		tp->tx_mode &= ~TX_MODE_FLOW_CTRL_ENABLE;

	if (old_tx_mode != tp->tx_mode)
		FUNC4(MAC_TX_MODE, tp->tx_mode);
}