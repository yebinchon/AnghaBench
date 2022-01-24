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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int revision_id; unsigned int device_id; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;
struct ethtool_regs {unsigned int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VFCTRL ; 
 int /*<<< orphan*/  IXGBE_VFFRTIMER ; 
 int /*<<< orphan*/  IXGBE_VFLINKS ; 
 int /*<<< orphan*/  IXGBE_VFPSRTYPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  IXGBE_VFRXMEMWRAP ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  IXGBE_VFSTATUS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  IXGBE_VTEIAC ; 
 int /*<<< orphan*/  IXGBE_VTEIAM ; 
 int /*<<< orphan*/  IXGBE_VTEICS ; 
 int /*<<< orphan*/  IXGBE_VTEIMC ; 
 int /*<<< orphan*/  IXGBE_VTEIMS ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VTIVAR_MISC ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC20 (struct net_device*) ; 

__attribute__((used)) static void FUNC21(struct net_device *netdev,
			     struct ethtool_regs *regs,
			     void *p)
{
	struct ixgbevf_adapter *adapter = FUNC20(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u32 regs_len = FUNC18(netdev);
	u8 i;

	FUNC19(p, 0, regs_len);

	/* generate a number suitable for ethtool's register version */
	regs->version = (1u << 24) | (hw->revision_id << 16) | hw->device_id;

	/* General Registers */
	regs_buff[0] = FUNC0(hw, IXGBE_VFCTRL);
	regs_buff[1] = FUNC0(hw, IXGBE_VFSTATUS);
	regs_buff[2] = FUNC0(hw, IXGBE_VFLINKS);
	regs_buff[3] = FUNC0(hw, IXGBE_VFRXMEMWRAP);
	regs_buff[4] = FUNC0(hw, IXGBE_VFFRTIMER);

	/* Interrupt */
	/* don't read EICR because it can clear interrupt causes, instead
	 * read EICS which is a shadow but doesn't clear EICR
	 */
	regs_buff[5] = FUNC0(hw, IXGBE_VTEICS);
	regs_buff[6] = FUNC0(hw, IXGBE_VTEICS);
	regs_buff[7] = FUNC0(hw, IXGBE_VTEIMS);
	regs_buff[8] = FUNC0(hw, IXGBE_VTEIMC);
	regs_buff[9] = FUNC0(hw, IXGBE_VTEIAC);
	regs_buff[10] = FUNC0(hw, IXGBE_VTEIAM);
	regs_buff[11] = FUNC0(hw, FUNC16(0));
	regs_buff[12] = FUNC0(hw, FUNC17(0));
	regs_buff[13] = FUNC0(hw, IXGBE_VTIVAR_MISC);

	/* Receive DMA */
	for (i = 0; i < 2; i++)
		regs_buff[14 + i] = FUNC0(hw, FUNC2(i));
	for (i = 0; i < 2; i++)
		regs_buff[16 + i] = FUNC0(hw, FUNC1(i));
	for (i = 0; i < 2; i++)
		regs_buff[18 + i] = FUNC0(hw, FUNC4(i));
	for (i = 0; i < 2; i++)
		regs_buff[20 + i] = FUNC0(hw, FUNC3(i));
	for (i = 0; i < 2; i++)
		regs_buff[22 + i] = FUNC0(hw, FUNC5(i));
	for (i = 0; i < 2; i++)
		regs_buff[24 + i] = FUNC0(hw, FUNC6(i));
	for (i = 0; i < 2; i++)
		regs_buff[26 + i] = FUNC0(hw, FUNC7(i));

	/* Receive */
	regs_buff[28] = FUNC0(hw, IXGBE_VFPSRTYPE);

	/* Transmit */
	for (i = 0; i < 2; i++)
		regs_buff[29 + i] = FUNC0(hw, FUNC9(i));
	for (i = 0; i < 2; i++)
		regs_buff[31 + i] = FUNC0(hw, FUNC8(i));
	for (i = 0; i < 2; i++)
		regs_buff[33 + i] = FUNC0(hw, FUNC11(i));
	for (i = 0; i < 2; i++)
		regs_buff[35 + i] = FUNC0(hw, FUNC10(i));
	for (i = 0; i < 2; i++)
		regs_buff[37 + i] = FUNC0(hw, FUNC12(i));
	for (i = 0; i < 2; i++)
		regs_buff[39 + i] = FUNC0(hw, FUNC15(i));
	for (i = 0; i < 2; i++)
		regs_buff[41 + i] = FUNC0(hw, FUNC14(i));
	for (i = 0; i < 2; i++)
		regs_buff[43 + i] = FUNC0(hw, FUNC13(i));
}