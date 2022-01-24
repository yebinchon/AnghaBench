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
typedef  int u16 ;
struct sky2_port {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  netdev; } ;
struct sky2_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int /*<<< orphan*/  PHY_MARV_INT_STAT ; 
 int /*<<< orphan*/  PHY_MARV_PHY_STAT ; 
 int PHY_M_IS_AN_COMPL ; 
 int PHY_M_IS_DUP_CHANGE ; 
 int PHY_M_IS_LSP_CHANGE ; 
 int PHY_M_IS_LST_CHANGE ; 
 int PHY_M_PS_FULL_DUP ; 
 int PHY_M_PS_LINK_UP ; 
 int FUNC0 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sky2_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct sky2_hw *hw, unsigned port)
{
	struct net_device *dev = hw->dev[port];
	struct sky2_port *sky2 = FUNC1(dev);
	u16 istatus, phystat;

	if (!FUNC4(dev))
		return;

	FUNC9(&sky2->phy_lock);
	istatus = FUNC0(hw, port, PHY_MARV_INT_STAT);
	phystat = FUNC0(hw, port, PHY_MARV_PHY_STAT);

	FUNC3(sky2, intr, sky2->netdev, "phy interrupt status 0x%x 0x%x\n",
		   istatus, phystat);

	if (istatus & PHY_M_IS_AN_COMPL) {
		if (FUNC5(sky2, phystat) == 0 &&
		    !FUNC2(dev))
			FUNC7(sky2);
		goto out;
	}

	if (istatus & PHY_M_IS_LSP_CHANGE)
		sky2->speed = FUNC8(hw, phystat);

	if (istatus & PHY_M_IS_DUP_CHANGE)
		sky2->duplex =
		    (phystat & PHY_M_PS_FULL_DUP) ? DUPLEX_FULL : DUPLEX_HALF;

	if (istatus & PHY_M_IS_LST_CHANGE) {
		if (phystat & PHY_M_PS_LINK_UP)
			FUNC7(sky2);
		else
			FUNC6(sky2);
	}
out:
	FUNC10(&sky2->phy_lock);
}