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
struct ofdpa_port {TYPE_1__* dev; int /*<<< orphan*/  pport; int /*<<< orphan*/  internal_vlan_id; struct ofdpa* ofdpa; } ;
struct ofdpa_neigh_tbl_entry {int ttl_check; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  index; int /*<<< orphan*/  eth_dst; TYPE_1__* dev; } ;
struct ofdpa {int /*<<< orphan*/  neigh_tbl_lock; } ;
typedef  enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OFDPA_OP_FLAG_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ROCKER_OF_DPA_TABLE_ID_ACL_POLICY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ofdpa_neigh_tbl_entry*) ; 
 struct ofdpa_neigh_tbl_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ofdpa_neigh_tbl_entry*,struct ofdpa_neigh_tbl_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int,int /*<<< orphan*/ *,...) ; 
 int FUNC8 (struct ofdpa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct ofdpa_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ofdpa*,struct ofdpa_neigh_tbl_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct ofdpa_neigh_tbl_entry*) ; 
 struct ofdpa_neigh_tbl_entry* FUNC12 (struct ofdpa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ofdpa_neigh_tbl_entry*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct ofdpa_port *ofdpa_port,
				 int flags, __be32 ip_addr, const u8 *eth_dst)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_neigh_tbl_entry *entry;
	struct ofdpa_neigh_tbl_entry *found;
	unsigned long lock_flags;
	__be16 eth_type = FUNC2(ETH_P_IP);
	enum rocker_of_dpa_table_id goto_tbl =
			ROCKER_OF_DPA_TABLE_ID_ACL_POLICY;
	u32 group_id;
	u32 priority = 0;
	bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
	bool updating;
	bool removing;
	int err = 0;

	entry = FUNC5(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC14(&ofdpa->neigh_tbl_lock, lock_flags);

	found = FUNC12(ofdpa, ip_addr);

	updating = found && adding;
	removing = found && !adding;
	adding = !found && adding;

	if (adding) {
		entry->ip_addr = ip_addr;
		entry->dev = ofdpa_port->dev;
		FUNC1(entry->eth_dst, eth_dst);
		entry->ttl_check = true;
		FUNC10(ofdpa, entry);
	} else if (removing) {
		FUNC6(entry, found, sizeof(*entry));
		FUNC11(found);
	} else if (updating) {
		FUNC13(found, eth_dst, true);
		FUNC6(entry, found, sizeof(*entry));
	} else {
		err = -ENOENT;
	}

	FUNC15(&ofdpa->neigh_tbl_lock, lock_flags);

	if (err)
		goto err_out;

	/* For each active neighbor, we have an L3 unicast group and
	 * a /32 route to the neighbor, which uses the L3 unicast
	 * group.  The L3 unicast group can also be referred to by
	 * other routes' nexthops.
	 */

	err = FUNC9(ofdpa_port, flags,
				     entry->index,
				     ofdpa_port->dev->dev_addr,
				     entry->eth_dst,
				     ofdpa_port->internal_vlan_id,
				     entry->ttl_check,
				     ofdpa_port->pport);
	if (err) {
		FUNC7(ofdpa_port->dev, "Error (%d) L3 unicast group index %d\n",
			   err, &entry->index);
		goto err_out;
	}

	if (adding || removing) {
		group_id = FUNC0(entry->index);
		err = FUNC8(ofdpa_port,
						    eth_type, ip_addr,
						    FUNC3(32),
						    priority, goto_tbl,
						    group_id, NULL, flags);

		if (err)
			FUNC7(ofdpa_port->dev, "Error (%d) /32 unicast route %pI4 group 0x%08x\n",
				   err, &entry->ip_addr, group_id);
	}

err_out:
	if (!adding)
		FUNC4(entry);

	return err;
}