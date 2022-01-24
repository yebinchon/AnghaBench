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
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; int* rss_key; int* rss_indir_tbl; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int IXGBEVF_VFRSSRK_REGS ; 
 int IXGBEVF_X550_VFRETA_SIZE ; 
 int /*<<< orphan*/  IXGBE_VFMRQC ; 
 int IXGBE_VFMRQC_RSSEN ; 
 int IXGBE_VFMRQC_RSS_FIELD_IPV4 ; 
 int IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP ; 
 int IXGBE_VFMRQC_RSS_FIELD_IPV6 ; 
 int IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 vfmrqc = 0, vfreta = 0;
	u16 rss_i = adapter->num_rx_queues;
	u8 i, j;

	/* Fill out hash function seeds */
	for (i = 0; i < IXGBEVF_VFRSSRK_REGS; i++)
		FUNC2(hw, FUNC1(i), *(adapter->rss_key + i));

	for (i = 0, j = 0; i < IXGBEVF_X550_VFRETA_SIZE; i++, j++) {
		if (j == rss_i)
			j = 0;

		adapter->rss_indir_tbl[i] = j;

		vfreta |= j << (i & 0x3) * 8;
		if ((i & 3) == 3) {
			FUNC2(hw, FUNC0(i >> 2), vfreta);
			vfreta = 0;
		}
	}

	/* Perform hash on these packet types */
	vfmrqc |= IXGBE_VFMRQC_RSS_FIELD_IPV4 |
		IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP |
		IXGBE_VFMRQC_RSS_FIELD_IPV6 |
		IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP;

	vfmrqc |= IXGBE_VFMRQC_RSSEN;

	FUNC2(hw, IXGBE_VFMRQC, vfmrqc);
}