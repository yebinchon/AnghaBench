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
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_GCR ; 
 int IXGBE_GCR_CAP_VER2 ; 
 int IXGBE_GCR_CMPL_TMOUT_10ms ; 
 int IXGBE_GCR_CMPL_TMOUT_MASK ; 
 int IXGBE_GCR_CMPL_TMOUT_RESEND ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_CONTROL2 ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_CONTROL2_16ms ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_hw *hw)
{
	u32 gcr = FUNC0(hw, IXGBE_GCR);
	u16 pcie_devctl2;

	if (FUNC3(hw->hw_addr))
		return;

	/* only take action if timeout value is defaulted to 0 */
	if (gcr & IXGBE_GCR_CMPL_TMOUT_MASK)
		goto out;

	/*
	 * if capababilities version is type 1 we can write the
	 * timeout of 10ms to 250ms through the GCR register
	 */
	if (!(gcr & IXGBE_GCR_CAP_VER2)) {
		gcr |= IXGBE_GCR_CMPL_TMOUT_10ms;
		goto out;
	}

	/*
	 * for version 2 capabilities we need to write the config space
	 * directly in order to set the completion timeout value for
	 * 16ms to 55ms
	 */
	pcie_devctl2 = FUNC2(hw, IXGBE_PCI_DEVICE_CONTROL2);
	pcie_devctl2 |= IXGBE_PCI_DEVICE_CONTROL2_16ms;
	FUNC4(hw, IXGBE_PCI_DEVICE_CONTROL2, pcie_devctl2);
out:
	/* disable completion timeout resend */
	gcr &= ~IXGBE_GCR_CMPL_TMOUT_RESEND;
	FUNC1(hw, IXGBE_GCR, gcr);
}