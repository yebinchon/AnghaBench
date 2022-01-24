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
struct ksz_hw {int features; int /*<<< orphan*/  overrides; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_STORM_PROTECTION_RATE ; 
 int /*<<< orphan*/  KS8842_SWITCH_CTRL_1_OFFSET ; 
 int /*<<< orphan*/  PAUSE_FLOW_CTRL ; 
 int STP_SUPPORT ; 
 int SWITCH_PORT_NUM ; 
 int SWITCH_RX_FLOW_CTRL ; 
 int SWITCH_TX_FLOW_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ksz_hw*) ; 

__attribute__((used)) static void FUNC11(struct ksz_hw *hw)
{
	int port;

	FUNC10(hw);

	/* Enable switch broadcast storm protection at 10% percent rate. */
	FUNC4(hw);
	FUNC0(hw, BROADCAST_STORM_PROTECTION_RATE);
	for (port = 0; port < SWITCH_PORT_NUM; port++)
		FUNC2(hw, port);

	FUNC6(hw);

	FUNC5(hw);

	FUNC7(hw);

	FUNC9(hw);

	if (hw->features & STP_SUPPORT)
		FUNC8(hw);
	if (!FUNC1(hw, KS8842_SWITCH_CTRL_1_OFFSET,
			SWITCH_TX_FLOW_CTRL | SWITCH_RX_FLOW_CTRL))
		hw->overrides |= PAUSE_FLOW_CTRL;
	FUNC3(hw, 1);
}