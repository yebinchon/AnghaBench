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
struct igc_hw {int dummy; } ;
struct igc_adapter {struct igc_hw hw; } ;

/* Variables and functions */
 int IGC_COLLISION_THRESHOLD ; 
 int IGC_CT_SHIFT ; 
 int /*<<< orphan*/  IGC_TCTL ; 
 int IGC_TCTL_CT ; 
 int IGC_TCTL_EN ; 
 int IGC_TCTL_PSP ; 
 int IGC_TCTL_RTLC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct igc_adapter *adapter)
{
	struct igc_hw *hw = &adapter->hw;
	u32 tctl;

	/* disable queue 0 which icould be enabled by default */
	FUNC2(FUNC0(0), 0);

	/* Program the Transmit Control Register */
	tctl = FUNC1(IGC_TCTL);
	tctl &= ~IGC_TCTL_CT;
	tctl |= IGC_TCTL_PSP | IGC_TCTL_RTLC |
		(IGC_COLLISION_THRESHOLD << IGC_CT_SHIFT);

	/* Enable transmits */
	tctl |= IGC_TCTL_EN;

	FUNC2(IGC_TCTL, tctl);
}