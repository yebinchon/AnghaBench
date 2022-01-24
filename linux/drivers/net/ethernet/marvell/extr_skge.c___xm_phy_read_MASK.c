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
struct skge_hw {int phy_addr; scalar_t__ phy_type; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PHY_RETRIES ; 
 scalar_t__ SK_PHY_XMAC ; 
 int /*<<< orphan*/  XM_MMU_CMD ; 
 int XM_MMU_PHY_RDY ; 
 int /*<<< orphan*/  XM_PHY_ADDR ; 
 int /*<<< orphan*/  XM_PHY_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct skge_hw *hw, int port, u16 reg, u16 *val)
{
	int i;

	FUNC2(hw, port, XM_PHY_ADDR, reg | hw->phy_addr);
	*val = FUNC1(hw, port, XM_PHY_DATA);

	if (hw->phy_type == SK_PHY_XMAC)
		goto ready;

	for (i = 0; i < PHY_RETRIES; i++) {
		if (FUNC1(hw, port, XM_MMU_CMD) & XM_MMU_PHY_RDY)
			goto ready;
		FUNC0(1);
	}

	return -ETIMEDOUT;
 ready:
	*val = FUNC1(hw, port, XM_PHY_DATA);

	return 0;
}