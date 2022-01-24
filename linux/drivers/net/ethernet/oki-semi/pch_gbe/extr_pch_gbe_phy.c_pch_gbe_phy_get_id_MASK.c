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
typedef  void* u32 ;
typedef  int u16 ;
struct pch_gbe_phy_info {int id; void* revision; } ;
struct pch_gbe_hw {struct pch_gbe_phy_info phy; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_ID1 ; 
 int /*<<< orphan*/  PHY_ID2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,void*) ; 
 struct pch_gbe_adapter* FUNC1 (struct pch_gbe_hw*) ; 
 scalar_t__ FUNC2 (struct pch_gbe_hw*,int /*<<< orphan*/ ,int*) ; 

s32 FUNC3(struct pch_gbe_hw *hw)
{
	struct pch_gbe_adapter *adapter = FUNC1(hw);
	struct pch_gbe_phy_info *phy = &hw->phy;
	s32 ret;
	u16 phy_id1;
	u16 phy_id2;

	ret = FUNC2(hw, PHY_ID1, &phy_id1);
	if (ret)
		return ret;
	ret = FUNC2(hw, PHY_ID2, &phy_id2);
	if (ret)
		return ret;
	/*
	 * PHY_ID1: [bit15-0:ID(21-6)]
	 * PHY_ID2: [bit15-10:ID(5-0)][bit9-4:Model][bit3-0:revision]
	 */
	phy->id = (u32)phy_id1;
	phy->id = ((phy->id << 6) | ((phy_id2 & 0xFC00) >> 10));
	phy->revision = (u32) (phy_id2 & 0x000F);
	FUNC0(adapter->netdev,
		   "phy->id : 0x%08x  phy->revision : 0x%08x\n",
		   phy->id, phy->revision);
	return 0;
}