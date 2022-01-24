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
struct ofdpa_flow_tbl_entry {size_t key_len; int /*<<< orphan*/  cmd; int /*<<< orphan*/  entry; int /*<<< orphan*/  key; int /*<<< orphan*/  key_crc32; } ;
struct ofdpa {int /*<<< orphan*/  flow_tbl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_flow_tbl_entry*) ; 
 int /*<<< orphan*/  ofdpa_cmd_flow_tbl_del ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ofdpa_flow_tbl_entry* FUNC4 (struct ofdpa*,struct ofdpa_flow_tbl_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ofdpa_flow_tbl_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ofdpa_port *ofdpa_port,
			      int flags, struct ofdpa_flow_tbl_entry *match)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_flow_tbl_entry *found;
	size_t key_len = match->key_len ? match->key_len : sizeof(found->key);
	unsigned long lock_flags;
	int err = 0;

	match->key_crc32 = FUNC0(~0, &match->key, key_len);

	FUNC6(&ofdpa->flow_tbl_lock, lock_flags);

	found = FUNC4(ofdpa, match);

	if (found) {
		FUNC1(&found->entry);
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL;
	}

	FUNC7(&ofdpa->flow_tbl_lock, lock_flags);

	FUNC2(match);

	if (found) {
		err = FUNC5(ofdpa_port->rocker_port,
				      FUNC3(flags),
				      ofdpa_cmd_flow_tbl_del,
				      found, NULL, NULL);
		FUNC2(found);
	}

	return err;
}