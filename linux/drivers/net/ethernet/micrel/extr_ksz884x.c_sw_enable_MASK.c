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
struct ksz_hw {int dev_count; scalar_t__ io; } ;

/* Variables and functions */
 int HOST_MASK ; 
 int KS8842_START ; 
 scalar_t__ KS884X_CHIP_ID_OFFSET ; 
 int PORT_MASK ; 
 int /*<<< orphan*/  STP_STATE_DISABLED ; 
 int /*<<< orphan*/  STP_STATE_FORWARDING ; 
 int /*<<< orphan*/  STP_STATE_SIMPLE ; 
 int SWITCH_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw, int enable)
{
	int port;

	for (port = 0; port < SWITCH_PORT_NUM; port++) {
		if (hw->dev_count > 1) {
			/* Set port-base vlan membership with host port. */
			FUNC1(hw, port,
				HOST_MASK | (1 << port));
			FUNC0(hw, port, STP_STATE_DISABLED);
		} else {
			FUNC1(hw, port, PORT_MASK);
			FUNC0(hw, port, STP_STATE_FORWARDING);
		}
	}
	if (hw->dev_count > 1)
		FUNC0(hw, SWITCH_PORT_NUM, STP_STATE_SIMPLE);
	else
		FUNC0(hw, SWITCH_PORT_NUM, STP_STATE_FORWARDING);

	if (enable)
		enable = KS8842_START;
	FUNC2(enable, hw->io + KS884X_CHIP_ID_OFFSET);
}