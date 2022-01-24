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
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int E1000_RCTL_EN ; 
 int E1000_RXDCTL_THRESH_UNIT_DESC ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct e1000_adapter *adapter)
{
	u32 rctl, rxdctl;
	struct e1000_hw *hw = &adapter->hw;

	rctl = FUNC3(RCTL);
	FUNC4(RCTL, rctl & ~E1000_RCTL_EN);
	FUNC2();
	FUNC5(100, 150);

	rxdctl = FUNC3(FUNC1(0));
	/* zero the lower 14 bits (prefetch and host thresholds) */
	rxdctl &= 0xffffc000;

	/* update thresholds: prefetch threshold to 31, host threshold to 1
	 * and make sure the granularity is "descriptors" and not "cache lines"
	 */
	rxdctl |= (0x1F | FUNC0(8) | E1000_RXDCTL_THRESH_UNIT_DESC);

	FUNC4(FUNC1(0), rxdctl);
	/* momentarily enable the RX ring for the changes to take effect */
	FUNC4(RCTL, rctl | E1000_RCTL_EN);
	FUNC2();
	FUNC5(100, 150);
	FUNC4(RCTL, rctl & ~E1000_RCTL_EN);
}