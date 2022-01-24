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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgb_hw {int num_mc_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ETH_ALEN ; 
 int IXGB_MC_TBL_SIZE ; 
 int IXGB_RAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTA ; 
 int /*<<< orphan*/  RA ; 
 int FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(struct ixgb_hw *hw,
			  u8 *mc_addr_list,
			  u32 mc_addr_count,
			  u32 pad)
{
	u32 hash_value;
	u32 i;
	u32 rar_used_count = 1;		/* RAR[0] is used for our MAC address */
	u8 *mca;

	FUNC0();

	/* Set the new number of MC addresses that we are being requested to use. */
	hw->num_mc_addrs = mc_addr_count;

	/* Clear RAR[1-15] */
	FUNC5("Clearing RAR[1-15]\n");
	for (i = rar_used_count; i < IXGB_RAR_ENTRIES; i++) {
		FUNC1(hw, RA, (i << 1), 0);
		FUNC1(hw, RA, ((i << 1) + 1), 0);
	}

	/* Clear the MTA */
	FUNC5("Clearing MTA\n");
	for (i = 0; i < IXGB_MC_TBL_SIZE; i++)
		FUNC1(hw, MTA, i, 0);

	/* Add the new addresses */
	mca = mc_addr_list;
	for (i = 0; i < mc_addr_count; i++) {
		FUNC5("Adding the multicast addresses:\n");
		FUNC5("MC Addr #%d = %pM\n", i, mca);

		/* Place this multicast address in the RAR if there is room, *
		 * else put it in the MTA
		 */
		if (rar_used_count < IXGB_RAR_ENTRIES) {
			FUNC4(hw, mca, rar_used_count);
			FUNC5("Added a multicast address to RAR[%d]\n", i);
			rar_used_count++;
		} else {
			hash_value = FUNC2(hw, mca);

			FUNC5("Hash value = 0x%03X\n", hash_value);

			FUNC3(hw, hash_value);
		}

		mca += ETH_ALEN + pad;
	}

	FUNC5("MC Update Complete\n");
}