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
typedef  int u32 ;
struct phy_device {int speed; scalar_t__ duplex; int /*<<< orphan*/  link; } ;
struct TYPE_4__ {int desc_split; } ;
struct ag71xx {int* fifodata; TYPE_2__ tx_ring; TYPE_1__* ndev; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG3 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG5 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_IFCTL ; 
 int /*<<< orphan*/  AR7100 ; 
 int /*<<< orphan*/  AR9130 ; 
 int FIFO_CFG5_BM ; 
 int MAC_CFG2_FDX ; 
 int MAC_CFG2_IF_1000 ; 
 int MAC_CFG2_IF_10_100 ; 
 int MAC_IFCTL_SPEED ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 

__attribute__((used)) static void FUNC8(struct ag71xx *ag, bool update)
{
	struct phy_device *phydev = ag->ndev->phydev;
	u32 cfg2;
	u32 ifctl;
	u32 fifo5;

	if (!phydev->link && update) {
		FUNC3(ag);
		return;
	}

	if (!FUNC4(ag, AR7100) && !FUNC4(ag, AR9130))
		FUNC1(ag);

	cfg2 = FUNC5(ag, AG71XX_REG_MAC_CFG2);
	cfg2 &= ~(MAC_CFG2_IF_1000 | MAC_CFG2_IF_10_100 | MAC_CFG2_FDX);
	cfg2 |= (phydev->duplex) ? MAC_CFG2_FDX : 0;

	ifctl = FUNC5(ag, AG71XX_REG_MAC_IFCTL);
	ifctl &= ~(MAC_IFCTL_SPEED);

	fifo5 = FUNC5(ag, AG71XX_REG_FIFO_CFG5);
	fifo5 &= ~FIFO_CFG5_BM;

	switch (phydev->speed) {
	case SPEED_1000:
		cfg2 |= MAC_CFG2_IF_1000;
		fifo5 |= FIFO_CFG5_BM;
		break;
	case SPEED_100:
		cfg2 |= MAC_CFG2_IF_10_100;
		ifctl |= MAC_IFCTL_SPEED;
		break;
	case SPEED_10:
		cfg2 |= MAC_CFG2_IF_10_100;
		break;
	default:
		FUNC0(1, "not supported speed %i\n", phydev->speed);
		return;
	}

	if (ag->tx_ring.desc_split) {
		ag->fifodata[2] &= 0xffff;
		ag->fifodata[2] |= ((2048 - ag->tx_ring.desc_split) / 4) << 16;
	}

	FUNC6(ag, AG71XX_REG_FIFO_CFG3, ag->fifodata[2]);

	FUNC6(ag, AG71XX_REG_MAC_CFG2, cfg2);
	FUNC6(ag, AG71XX_REG_FIFO_CFG5, fifo5);
	FUNC6(ag, AG71XX_REG_MAC_IFCTL, ifctl);

	FUNC2(ag);

	if (update)
		FUNC7(phydev);
}