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
typedef  unsigned char u8 ;
typedef  int u32 ;
struct hclge_mac_vlan_tbl_entry_cmd {int /*<<< orphan*/  mac_addr_lo16; int /*<<< orphan*/  mac_addr_hi32; int /*<<< orphan*/  mc_mac_en; int /*<<< orphan*/  entry_type; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MAC_VLAN_BIT0_EN_B ; 
 int /*<<< orphan*/  HCLGE_MAC_VLAN_BIT1_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hclge_mac_vlan_tbl_entry_cmd *new_req,
				   const u8 *addr, bool is_mc)
{
	const unsigned char *mac_addr = addr;
	u32 high_val = mac_addr[2] << 16 | (mac_addr[3] << 24) |
		       (mac_addr[0]) | (mac_addr[1] << 8);
	u32 low_val  = mac_addr[4] | (mac_addr[5] << 8);

	FUNC2(new_req->flags, HCLGE_MAC_VLAN_BIT0_EN_B, 1);
	if (is_mc) {
		FUNC2(new_req->entry_type, HCLGE_MAC_VLAN_BIT1_EN_B, 1);
		FUNC2(new_req->mc_mac_en, HCLGE_MAC_VLAN_BIT0_EN_B, 1);
	}

	new_req->mac_addr_hi32 = FUNC1(high_val);
	new_req->mac_addr_lo16 = FUNC0(low_val & 0xffff);
}