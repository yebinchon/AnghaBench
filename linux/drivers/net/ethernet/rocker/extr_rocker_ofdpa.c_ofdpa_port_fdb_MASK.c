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
struct ofdpa_port {struct ofdpa* ofdpa; } ;
struct TYPE_2__ {int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  addr; struct ofdpa_port* ofdpa_port; } ;
struct ofdpa_fdb_tbl_entry {int learned; int /*<<< orphan*/  key_crc32; int /*<<< orphan*/  entry; void* touched; TYPE_1__ key; } ;
struct ofdpa {int /*<<< orphan*/  fdb_tbl_lock; int /*<<< orphan*/  fdb_tbl; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OFDPA_OP_FLAG_LEARNED ; 
 int OFDPA_OP_FLAG_REFRESH ; 
 int OFDPA_OP_FLAG_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct ofdpa_fdb_tbl_entry*) ; 
 struct ofdpa_fdb_tbl_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ofdpa_fdb_tbl_entry* FUNC6 (struct ofdpa*,struct ofdpa_fdb_tbl_entry*) ; 
 int FUNC7 (struct ofdpa_port*,int,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ofdpa_port *ofdpa_port,
			  const unsigned char *addr,
			  __be16 vlan_id, int flags)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_fdb_tbl_entry *fdb;
	struct ofdpa_fdb_tbl_entry *found;
	bool removing = (flags & OFDPA_OP_FLAG_REMOVE);
	unsigned long lock_flags;

	fdb = FUNC5(sizeof(*fdb), GFP_KERNEL);
	if (!fdb)
		return -ENOMEM;

	fdb->learned = (flags & OFDPA_OP_FLAG_LEARNED);
	fdb->touched = jiffies;
	fdb->key.ofdpa_port = ofdpa_port;
	FUNC1(fdb->key.addr, addr);
	fdb->key.vlan_id = vlan_id;
	fdb->key_crc32 = FUNC0(~0, &fdb->key, sizeof(fdb->key));

	FUNC8(&ofdpa->fdb_tbl_lock, lock_flags);

	found = FUNC6(ofdpa, fdb);

	if (found) {
		found->touched = jiffies;
		if (removing) {
			FUNC4(fdb);
			FUNC3(&found->entry);
		}
	} else if (!removing) {
		FUNC2(ofdpa->fdb_tbl, &fdb->entry,
			 fdb->key_crc32);
	}

	FUNC9(&ofdpa->fdb_tbl_lock, lock_flags);

	/* Check if adding and already exists, or removing and can't find */
	if (!found != !removing) {
		FUNC4(fdb);
		if (!found && removing)
			return 0;
		/* Refreshing existing to update aging timers */
		flags |= OFDPA_OP_FLAG_REFRESH;
	}

	return FUNC7(ofdpa_port, flags, addr, vlan_id);
}