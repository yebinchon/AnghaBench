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
struct ofdpa_port {int /*<<< orphan*/  rocker_port; struct ofdpa* ofdpa; } ;
struct ofdpa_group_tbl_entry {int /*<<< orphan*/  group_id; int /*<<< orphan*/  entry; int /*<<< orphan*/  cmd; } ;
struct ofdpa {int /*<<< orphan*/  group_tbl_lock; int /*<<< orphan*/  group_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofdpa_cmd_group_tbl_add ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ofdpa_group_tbl_entry*) ; 
 struct ofdpa_group_tbl_entry* FUNC4 (struct ofdpa*,struct ofdpa_group_tbl_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ofdpa_group_tbl_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ofdpa_port *ofdpa_port, int flags,
			       struct ofdpa_group_tbl_entry *match)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_group_tbl_entry *found;
	unsigned long lock_flags;

	FUNC6(&ofdpa->group_tbl_lock, lock_flags);

	found = FUNC4(ofdpa, match);

	if (found) {
		FUNC1(&found->entry);
		FUNC3(found);
		found = match;
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD;
	} else {
		found = match;
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD;
	}

	FUNC0(ofdpa->group_tbl, &found->entry, found->group_id);

	FUNC7(&ofdpa->group_tbl_lock, lock_flags);

	return FUNC5(ofdpa_port->rocker_port,
			       FUNC2(flags),
			       ofdpa_cmd_group_tbl_add,
			       found, NULL, NULL);
}