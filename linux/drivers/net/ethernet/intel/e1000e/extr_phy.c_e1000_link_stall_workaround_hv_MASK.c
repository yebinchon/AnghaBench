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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int BMCR_LOOPBACK ; 
 int /*<<< orphan*/  BM_CS_STATUS ; 
 int BM_CS_STATUS_LINK_UP ; 
 int BM_CS_STATUS_RESOLVED ; 
 int BM_CS_STATUS_SPEED_1000 ; 
 int BM_CS_STATUS_SPEED_MASK ; 
 int /*<<< orphan*/  HV_MUX_DATA_CTRL ; 
 int HV_MUX_DATA_CTRL_FORCE_SPEED ; 
 int HV_MUX_DATA_CTRL_GEN_TO_MAC ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ e1000_phy_82578 ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val = 0;
	u16 data;

	if (hw->phy.type != e1000_phy_82578)
		return 0;

	/* Do not apply workaround if in PHY loopback bit 14 set */
	FUNC0(hw, MII_BMCR, &data);
	if (data & BMCR_LOOPBACK)
		return 0;

	/* check if link is up and at 1Gbps */
	ret_val = FUNC0(hw, BM_CS_STATUS, &data);
	if (ret_val)
		return ret_val;

	data &= (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
		 BM_CS_STATUS_SPEED_MASK);

	if (data != (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
		     BM_CS_STATUS_SPEED_1000))
		return 0;

	FUNC2(200);

	/* flush the packets in the fifo buffer */
	ret_val = FUNC1(hw, HV_MUX_DATA_CTRL,
			   (HV_MUX_DATA_CTRL_GEN_TO_MAC |
			    HV_MUX_DATA_CTRL_FORCE_SPEED));
	if (ret_val)
		return ret_val;

	return FUNC1(hw, HV_MUX_DATA_CTRL, HV_MUX_DATA_CTRL_GEN_TO_MAC);
}