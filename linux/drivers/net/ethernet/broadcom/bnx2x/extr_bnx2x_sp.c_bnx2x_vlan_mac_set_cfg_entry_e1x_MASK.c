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
typedef  int /*<<< orphan*/  u16 ;
struct mac_configuration_entry {int /*<<< orphan*/  flags; int /*<<< orphan*/  lsb_mac_addr; int /*<<< orphan*/  middle_mac_addr; int /*<<< orphan*/  msb_mac_addr; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  pf_id; int /*<<< orphan*/  clients_bit_vector; } ;
struct bnx2x_raw_obj {int cl_id; int /*<<< orphan*/  func_id; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CONFIGURATION_ENTRY_ACTION_TYPE ; 
 int /*<<< orphan*/  MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int T_ETH_MAC_COMMAND_INVALIDATE ; 
 int T_ETH_MAC_COMMAND_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct bnx2x *bp,
	struct bnx2x_vlan_mac_obj *o, bool add, int opcode, u8 *mac,
	u16 vlan_id, struct mac_configuration_entry *cfg_entry)
{
	struct bnx2x_raw_obj *r = &o->raw;
	u32 cl_bit_vec = (1 << r->cl_id);

	cfg_entry->clients_bit_vector = FUNC3(cl_bit_vec);
	cfg_entry->pf_id = r->func_id;
	cfg_entry->vlan_id = FUNC2(vlan_id);

	if (add) {
		FUNC0(cfg_entry->flags, MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
			 T_ETH_MAC_COMMAND_SET);
		FUNC0(cfg_entry->flags,
			 MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE, opcode);

		/* Set a MAC in a ramrod data */
		FUNC1(&cfg_entry->msb_mac_addr,
				      &cfg_entry->middle_mac_addr,
				      &cfg_entry->lsb_mac_addr, mac);
	} else
		FUNC0(cfg_entry->flags, MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
			 T_ETH_MAC_COMMAND_INVALIDATE);
}