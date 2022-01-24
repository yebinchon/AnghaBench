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
struct ofdpa_internal_vlan_tbl_entry {scalar_t__ ref_count; int /*<<< orphan*/  entry; int /*<<< orphan*/  vlan_id; } ;
struct ofdpa {int /*<<< orphan*/  internal_vlan_tbl_lock; int /*<<< orphan*/  internal_vlan_bitmap; } ;

/* Variables and functions */
 unsigned long OFDPA_INTERNAL_VLAN_ID_BASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_internal_vlan_tbl_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 struct ofdpa_internal_vlan_tbl_entry* FUNC5 (struct ofdpa*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(const struct ofdpa_port *ofdpa_port,
				int ifindex)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_internal_vlan_tbl_entry *found;
	unsigned long lock_flags;
	unsigned long bit;

	FUNC6(&ofdpa->internal_vlan_tbl_lock, lock_flags);

	found = FUNC5(ofdpa, ifindex);
	if (!found) {
		FUNC3(ofdpa_port->dev,
			   "ifindex (%d) not found in internal VLAN tbl\n",
			   ifindex);
		goto not_found;
	}

	if (--found->ref_count <= 0) {
		bit = FUNC4(found->vlan_id) - OFDPA_INTERNAL_VLAN_ID_BASE;
		FUNC0(bit, ofdpa->internal_vlan_bitmap);
		FUNC1(&found->entry);
		FUNC2(found);
	}

not_found:
	FUNC7(&ofdpa->internal_vlan_tbl_lock, lock_flags);
}