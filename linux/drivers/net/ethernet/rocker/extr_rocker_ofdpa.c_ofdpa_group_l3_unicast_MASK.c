#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ofdpa_port {int dummy; } ;
struct TYPE_2__ {int ttl_check; int /*<<< orphan*/  group_id; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l3_unicast; int /*<<< orphan*/  group_id; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct ofdpa_group_tbl_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ; 

__attribute__((used)) static int FUNC5(struct ofdpa_port *ofdpa_port, int flags,
				  u32 index, const u8 *src_mac, const u8 *dst_mac,
				  __be16 vlan_id, bool ttl_check, u32 pport)
{
	struct ofdpa_group_tbl_entry *entry;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	entry->group_id = FUNC1(index);
	if (src_mac)
		FUNC2(entry->l3_unicast.eth_src, src_mac);
	if (dst_mac)
		FUNC2(entry->l3_unicast.eth_dst, dst_mac);
	entry->l3_unicast.vlan_id = vlan_id;
	entry->l3_unicast.ttl_check = ttl_check;
	entry->l3_unicast.group_id = FUNC0(vlan_id, pport);

	return FUNC4(ofdpa_port, flags, entry);
}