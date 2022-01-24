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
typedef  int u16 ;
struct sky2_port {int dummy; } ;
struct sky2_hw {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B2_TST_CTRL1 ; 
 int /*<<< orphan*/  PSM_CONFIG_REG4 ; 
 int /*<<< orphan*/  TST_CFG_WRITE_OFF ; 
 int /*<<< orphan*/  TST_CFG_WRITE_ON ; 
 int /*<<< orphan*/  Y2_IS_PHY_QLNK ; 
 struct sky2_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_port*) ; 
 int FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sky2_hw *hw)
{
	struct sky2_port *sky2 = FUNC0(hw->dev[0]);
	u32 imask;
	u16 phy;

	/* disable irq */
	imask = FUNC4(hw, B0_IMSK);
	imask &= ~Y2_IS_PHY_QLNK;
	FUNC5(hw, B0_IMSK, imask);

	/* reset PHY Link Detect */
	phy = FUNC2(hw, PSM_CONFIG_REG4);
	FUNC6(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
	FUNC3(hw, PSM_CONFIG_REG4, phy | 1);
	FUNC6(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);

	FUNC1(sky2);
}