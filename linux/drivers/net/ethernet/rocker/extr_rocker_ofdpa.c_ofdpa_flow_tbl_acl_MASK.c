#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  void* u32 ;
struct ofdpa_port {int dummy; } ;
struct TYPE_3__ {void* group_id; void* ip_tos_mask; void* ip_tos; void* ip_proto_mask; void* ip_proto; void* vlan_id_mask; void* vlan_id; void* eth_type; int /*<<< orphan*/  eth_dst_mask; int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src_mask; int /*<<< orphan*/  eth_src; void* in_pport_mask; void* in_pport; } ;
struct TYPE_4__ {TYPE_1__ acl; int /*<<< orphan*/  tbl_id; void* priority; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;
typedef  void* __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* OFDPA_PRIORITY_ACL_CTRL ; 
 void* OFDPA_PRIORITY_ACL_DFLT ; 
 void* OFDPA_PRIORITY_ACL_NORMAL ; 
 int /*<<< orphan*/  ROCKER_OF_DPA_TABLE_ID_ACL_POLICY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void* const*) ; 
 scalar_t__ FUNC1 (void* const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void* const*) ; 
 struct ofdpa_flow_tbl_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_mac ; 
 int FUNC4 (struct ofdpa_port*,int,struct ofdpa_flow_tbl_entry*) ; 

__attribute__((used)) static int FUNC5(struct ofdpa_port *ofdpa_port, int flags,
			      u32 in_pport, u32 in_pport_mask,
			      const u8 *eth_src, const u8 *eth_src_mask,
			      const u8 *eth_dst, const u8 *eth_dst_mask,
			      __be16 eth_type, __be16 vlan_id,
			      __be16 vlan_id_mask, u8 ip_proto,
			      u8 ip_proto_mask, u8 ip_tos, u8 ip_tos_mask,
			      u32 group_id)
{
	u32 priority;
	struct ofdpa_flow_tbl_entry *entry;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	priority = OFDPA_PRIORITY_ACL_NORMAL;
	if (eth_dst && eth_dst_mask) {
		if (FUNC1(eth_dst_mask, mcast_mac))
			priority = OFDPA_PRIORITY_ACL_DFLT;
		else if (FUNC2(eth_dst))
			priority = OFDPA_PRIORITY_ACL_CTRL;
	}

	entry->key.priority = priority;
	entry->key.tbl_id = ROCKER_OF_DPA_TABLE_ID_ACL_POLICY;
	entry->key.acl.in_pport = in_pport;
	entry->key.acl.in_pport_mask = in_pport_mask;

	if (eth_src)
		FUNC0(entry->key.acl.eth_src, eth_src);
	if (eth_src_mask)
		FUNC0(entry->key.acl.eth_src_mask, eth_src_mask);
	if (eth_dst)
		FUNC0(entry->key.acl.eth_dst, eth_dst);
	if (eth_dst_mask)
		FUNC0(entry->key.acl.eth_dst_mask, eth_dst_mask);

	entry->key.acl.eth_type = eth_type;
	entry->key.acl.vlan_id = vlan_id;
	entry->key.acl.vlan_id_mask = vlan_id_mask;
	entry->key.acl.ip_proto = ip_proto;
	entry->key.acl.ip_proto_mask = ip_proto_mask;
	entry->key.acl.ip_tos = ip_tos;
	entry->key.acl.ip_tos_mask = ip_tos_mask;
	entry->key.acl.group_id = group_id;

	return FUNC4(ofdpa_port, flags, entry);
}