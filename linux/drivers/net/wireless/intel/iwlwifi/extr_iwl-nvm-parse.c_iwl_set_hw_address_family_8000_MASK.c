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
struct iwl_trans {int dummy; } ;
struct iwl_nvm_data {int /*<<< orphan*/  hw_addr; } ;
struct iwl_cfg {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int MAC_ADDRESS_OVERRIDE_EXT_NVM ; 
 int /*<<< orphan*/  WFMP_MAC_ADDR_0 ; 
 int /*<<< orphan*/  WFMP_MAC_ADDR_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct iwl_trans *trans,
					   const struct iwl_cfg *cfg,
					   struct iwl_nvm_data *data,
					   const __le16 *mac_override,
					   const __be16 *nvm_hw)
{
	const u8 *hw_addr;

	if (mac_override) {
		static const u8 reserved_mac[] = {
			0x02, 0xcc, 0xaa, 0xff, 0xee, 0x00
		};

		hw_addr = (const u8 *)(mac_override +
				 MAC_ADDRESS_OVERRIDE_EXT_NVM);

		/*
		 * Store the MAC address from MAO section.
		 * No byte swapping is required in MAO section
		 */
		FUNC6(data->hw_addr, hw_addr, ETH_ALEN);

		/*
		 * Force the use of the OTP MAC address in case of reserved MAC
		 * address in the NVM, or if address is given but invalid.
		 */
		if (FUNC2(data->hw_addr) &&
		    FUNC5(reserved_mac, hw_addr, ETH_ALEN) != 0)
			return;

		FUNC0(trans,
			"mac address from nvm override section is not valid\n");
	}

	if (nvm_hw) {
		/* read the mac address from WFMP registers */
		__le32 mac_addr0 = FUNC1(FUNC4(trans,
						WFMP_MAC_ADDR_0));
		__le32 mac_addr1 = FUNC1(FUNC4(trans,
						WFMP_MAC_ADDR_1));

		FUNC3(mac_addr0, mac_addr1, data->hw_addr);

		return;
	}

	FUNC0(trans, "mac address is not found\n");
}