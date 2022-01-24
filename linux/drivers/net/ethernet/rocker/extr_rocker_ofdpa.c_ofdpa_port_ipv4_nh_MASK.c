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
typedef  int /*<<< orphan*/  u32 ;
struct ofdpa_port {int /*<<< orphan*/  dev; struct ofdpa* ofdpa; } ;
struct ofdpa_neigh_tbl_entry {int /*<<< orphan*/  index; int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  dev; int /*<<< orphan*/  ip_addr; } ;
struct ofdpa {int /*<<< orphan*/  neigh_tbl_lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OFDPA_OP_FLAG_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ofdpa_neigh_tbl_entry*) ; 
 struct ofdpa_neigh_tbl_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ofdpa*,struct ofdpa_neigh_tbl_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ofdpa_neigh_tbl_entry*) ; 
 struct ofdpa_neigh_tbl_entry* FUNC5 (struct ofdpa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ofdpa_neigh_tbl_entry*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ofdpa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ofdpa_port *ofdpa_port,
			      int flags, __be32 ip_addr, u32 *index)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_neigh_tbl_entry *entry;
	struct ofdpa_neigh_tbl_entry *found;
	unsigned long lock_flags;
	bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
	bool updating;
	bool removing;
	bool resolved = true;
	int err = 0;

	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC8(&ofdpa->neigh_tbl_lock, lock_flags);

	found = FUNC5(ofdpa, ip_addr);

	updating = found && adding;
	removing = found && !adding;
	adding = !found && adding;

	if (adding) {
		entry->ip_addr = ip_addr;
		entry->dev = ofdpa_port->dev;
		FUNC3(ofdpa, entry);
		*index = entry->index;
		resolved = false;
	} else if (removing) {
		*index = found->index;
		FUNC4(found);
	} else if (updating) {
		FUNC6(found, NULL, false);
		resolved = !FUNC0(found->eth_dst);
		*index = found->index;
	} else {
		err = -ENOENT;
	}

	FUNC9(&ofdpa->neigh_tbl_lock, lock_flags);

	if (!adding)
		FUNC1(entry);

	if (err)
		return err;

	/* Resolved means neigh ip_addr is resolved to neigh mac. */

	if (!resolved)
		err = FUNC7(ofdpa_port, ip_addr);

	return err;
}