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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_IPSRXIDX ; 
 int /*<<< orphan*/  IXGBE_IPSTXIDX ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL ; 
 int IXGBE_SECRXCTRL_SECRX_DIS ; 
 int /*<<< orphan*/  IXGBE_SECTXBUFFAF ; 
 int /*<<< orphan*/  IXGBE_SECTXCTRL ; 
 int IXGBE_SECTXCTRL_SECTX_DIS ; 
 int IXGBE_SECTXCTRL_STORE_FORWARD ; 
 int /*<<< orphan*/  IXGBE_SECTXMINIFG ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 reg;

	FUNC3(adapter);

	/* disable Rx and Tx SA lookup */
	FUNC2(hw, IXGBE_IPSTXIDX, 0);
	FUNC2(hw, IXGBE_IPSRXIDX, 0);

	/* disable the Rx and Tx engines and full packet store-n-forward */
	reg = FUNC0(hw, IXGBE_SECTXCTRL);
	reg |= IXGBE_SECTXCTRL_SECTX_DIS;
	reg &= ~IXGBE_SECTXCTRL_STORE_FORWARD;
	FUNC2(hw, IXGBE_SECTXCTRL, reg);

	reg = FUNC0(hw, IXGBE_SECRXCTRL);
	reg |= IXGBE_SECRXCTRL_SECRX_DIS;
	FUNC2(hw, IXGBE_SECRXCTRL, reg);

	/* restore the "tx security buffer almost full threshold" to 0x250 */
	FUNC2(hw, IXGBE_SECTXBUFFAF, 0x250);

	/* Set minimum IFG between packets back to the default 0x1 */
	reg = FUNC0(hw, IXGBE_SECTXMINIFG);
	reg = (reg & 0xfffffff0) | 0x1;
	FUNC2(hw, IXGBE_SECTXMINIFG, reg);

	/* final set for normal (no ipsec offload) processing */
	FUNC2(hw, IXGBE_SECTXCTRL, IXGBE_SECTXCTRL_SECTX_DIS);
	FUNC2(hw, IXGBE_SECRXCTRL, IXGBE_SECRXCTRL_SECRX_DIS);

	FUNC1(hw);
}