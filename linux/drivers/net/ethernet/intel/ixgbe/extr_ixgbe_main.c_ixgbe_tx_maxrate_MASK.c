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
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_RTTBCNRC ; 
 int IXGBE_RTTBCNRC_RF_DEC_MASK ; 
 int IXGBE_RTTBCNRC_RF_INT_MASK ; 
 int IXGBE_RTTBCNRC_RF_INT_SHIFT ; 
 int IXGBE_RTTBCNRC_RS_ENA ; 
 int /*<<< orphan*/  IXGBE_RTTDQSEL ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			    int queue_index, u32 maxrate)
{
	struct ixgbe_adapter *adapter = FUNC2(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u32 bcnrc_val = FUNC1(adapter);

	if (!maxrate)
		return 0;

	/* Calculate the rate factor values to set */
	bcnrc_val <<= IXGBE_RTTBCNRC_RF_INT_SHIFT;
	bcnrc_val /= maxrate;

	/* clear everything but the rate factor */
	bcnrc_val &= IXGBE_RTTBCNRC_RF_INT_MASK |
	IXGBE_RTTBCNRC_RF_DEC_MASK;

	/* enable the rate scheduler */
	bcnrc_val |= IXGBE_RTTBCNRC_RS_ENA;

	FUNC0(hw, IXGBE_RTTDQSEL, queue_index);
	FUNC0(hw, IXGBE_RTTBCNRC, bcnrc_val);

	return 0;
}