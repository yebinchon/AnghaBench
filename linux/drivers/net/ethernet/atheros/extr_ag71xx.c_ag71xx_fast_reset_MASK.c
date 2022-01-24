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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  descs_dma; scalar_t__ dirty; scalar_t__ curr; } ;
struct ag71xx {TYPE_1__ tx_ring; struct net_device* ndev; int /*<<< orphan*/  mac_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CFG ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct ag71xx *ag)
{
	struct net_device *dev = ag->ndev;
	u32 rx_ds;
	u32 mii_reg;

	FUNC3(ag);

	mii_reg = FUNC5(ag, AG71XX_REG_MII_CFG);
	rx_ds = FUNC5(ag, AG71XX_REG_RX_DESC);

	FUNC6(ag, true);

	FUNC9(ag->mac_reset);
	FUNC11(10, 20);
	FUNC10(ag->mac_reset);
	FUNC11(10, 20);

	FUNC0(ag);
	FUNC2(ag);
	ag->tx_ring.curr = 0;
	ag->tx_ring.dirty = 0;
	FUNC8(ag->ndev);

	/* setup max frame length */
	FUNC7(ag, AG71XX_REG_MAC_MFL,
		  FUNC4(ag->ndev->mtu));

	FUNC7(ag, AG71XX_REG_RX_DESC, rx_ds);
	FUNC7(ag, AG71XX_REG_TX_DESC, ag->tx_ring.descs_dma);
	FUNC7(ag, AG71XX_REG_MII_CFG, mii_reg);

	FUNC1(ag, dev->dev_addr);
}