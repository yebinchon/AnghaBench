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
struct ofdpa_port {int /*<<< orphan*/  dev; struct ofdpa* ofdpa; } ;
struct ofdpa_internal_vlan_tbl_entry {int ifindex; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  entry; } ;
struct ofdpa {int /*<<< orphan*/  internal_vlan_tbl_lock; int /*<<< orphan*/  internal_vlan_bitmap; int /*<<< orphan*/  internal_vlan_tbl; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OFDPA_INTERNAL_VLAN_ID_BASE ; 
 int OFDPA_N_INTERNAL_VLANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_internal_vlan_tbl_entry*) ; 
 struct ofdpa_internal_vlan_tbl_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct ofdpa_internal_vlan_tbl_entry* FUNC5 (struct ofdpa*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be16 FUNC9(struct ofdpa_port *ofdpa_port,
					      int ifindex)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_internal_vlan_tbl_entry *entry;
	struct ofdpa_internal_vlan_tbl_entry *found;
	unsigned long lock_flags;
	int i;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return 0;

	entry->ifindex = ifindex;

	FUNC6(&ofdpa->internal_vlan_tbl_lock, lock_flags);

	found = FUNC5(ofdpa, ifindex);
	if (found) {
		FUNC2(entry);
		goto found;
	}

	found = entry;
	FUNC0(ofdpa->internal_vlan_tbl, &found->entry, found->ifindex);

	for (i = 0; i < OFDPA_N_INTERNAL_VLANS; i++) {
		if (FUNC8(i, ofdpa->internal_vlan_bitmap))
			continue;
		found->vlan_id = FUNC1(OFDPA_INTERNAL_VLAN_ID_BASE + i);
		goto found;
	}

	FUNC4(ofdpa_port->dev, "Out of internal VLAN IDs\n");

found:
	found->ref_count++;
	FUNC7(&ofdpa->internal_vlan_tbl_lock, lock_flags);

	return found->vlan_id;
}