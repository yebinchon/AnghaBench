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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  active_vlans; int /*<<< orphan*/  flags; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VFTA ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int,int) ; 
 struct e1000_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev,
				  __be16 proto, u16 vid)
{
	struct e1000_adapter *adapter = FUNC7(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 vfta, index;

	if (!FUNC8(__E1000_DOWN, &adapter->flags))
		FUNC2(adapter);
	if (!FUNC8(__E1000_DOWN, &adapter->flags))
		FUNC3(adapter);

	/* remove VID from filter table */
	index = (vid >> 5) & 0x7F;
	vfta = FUNC0(hw, VFTA, index);
	vfta &= ~(1 << (vid & 0x1F));
	FUNC6(hw, index, vfta);

	FUNC1(vid, adapter->active_vlans);

	if (!FUNC5(adapter))
		FUNC4(adapter, false);

	return 0;
}