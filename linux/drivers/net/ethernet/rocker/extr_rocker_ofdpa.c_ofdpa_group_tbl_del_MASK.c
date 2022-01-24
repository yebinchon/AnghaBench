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
struct ofdpa_group_tbl_entry {int /*<<< orphan*/  cmd; int /*<<< orphan*/  entry; } ;
struct ofdpa {int /*<<< orphan*/  group_tbl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofdpa_cmd_group_tbl_del ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_group_tbl_entry*) ; 
 struct ofdpa_group_tbl_entry* FUNC3 (struct ofdpa*,struct ofdpa_group_tbl_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ofdpa_group_tbl_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ofdpa_port *ofdpa_port, int flags,
			       struct ofdpa_group_tbl_entry *match)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_group_tbl_entry *found;
	unsigned long lock_flags;
	int err = 0;

	FUNC5(&ofdpa->group_tbl_lock, lock_flags);

	found = FUNC3(ofdpa, match);

	if (found) {
		FUNC0(&found->entry);
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_DEL;
	}

	FUNC6(&ofdpa->group_tbl_lock, lock_flags);

	FUNC2(match);

	if (found) {
		err = FUNC4(ofdpa_port->rocker_port,
				      FUNC1(flags),
				      ofdpa_cmd_group_tbl_del,
				      found, NULL, NULL);
		FUNC2(found);
	}

	return err;
}