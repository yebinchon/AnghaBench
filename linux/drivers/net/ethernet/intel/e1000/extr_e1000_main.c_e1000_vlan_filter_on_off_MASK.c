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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  flags; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL_CFIEN ; 
 int /*<<< orphan*/  E1000_RCTL_VFE ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct e1000_adapter *adapter,
				     bool filter_on)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl;

	if (!FUNC6(__E1000_DOWN, &adapter->flags))
		FUNC1(adapter);

	FUNC0(adapter, adapter->netdev->features);
	if (filter_on) {
		/* enable VLAN receive filtering */
		rctl = FUNC4(RCTL);
		rctl &= ~E1000_RCTL_CFIEN;
		if (!(adapter->netdev->flags & IFF_PROMISC))
			rctl |= E1000_RCTL_VFE;
		FUNC5(RCTL, rctl);
		FUNC3(adapter);
	} else {
		/* disable VLAN receive filtering */
		rctl = FUNC4(RCTL);
		rctl &= ~E1000_RCTL_VFE;
		FUNC5(RCTL, rctl);
	}

	if (!FUNC6(__E1000_DOWN, &adapter->flags))
		FUNC2(adapter);
}