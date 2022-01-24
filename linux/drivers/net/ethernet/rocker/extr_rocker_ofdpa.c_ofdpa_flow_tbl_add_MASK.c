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
struct ofdpa_flow_tbl_entry {size_t key_len; int /*<<< orphan*/  key_crc32; int /*<<< orphan*/  entry; int /*<<< orphan*/  cmd; scalar_t__ cookie; int /*<<< orphan*/  key; } ;
struct ofdpa {int /*<<< orphan*/  flow_tbl_lock; int /*<<< orphan*/  flow_tbl; int /*<<< orphan*/  flow_tbl_next_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ofdpa_flow_tbl_entry*) ; 
 int /*<<< orphan*/  ofdpa_cmd_flow_tbl_add ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ofdpa_flow_tbl_entry* FUNC5 (struct ofdpa*,struct ofdpa_flow_tbl_entry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ofdpa_flow_tbl_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ofdpa_port *ofdpa_port,
			      int flags, struct ofdpa_flow_tbl_entry *match)
{
	struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	struct ofdpa_flow_tbl_entry *found;
	size_t key_len = match->key_len ? match->key_len : sizeof(found->key);
	unsigned long lock_flags;

	match->key_crc32 = FUNC0(~0, &match->key, key_len);

	FUNC7(&ofdpa->flow_tbl_lock, lock_flags);

	found = FUNC5(ofdpa, match);

	if (found) {
		match->cookie = found->cookie;
		FUNC2(&found->entry);
		FUNC3(found);
		found = match;
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD;
	} else {
		found = match;
		found->cookie = ofdpa->flow_tbl_next_cookie++;
		found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD;
	}

	FUNC1(ofdpa->flow_tbl, &found->entry, found->key_crc32);
	FUNC8(&ofdpa->flow_tbl_lock, lock_flags);

	return FUNC6(ofdpa_port->rocker_port,
			       FUNC4(flags),
			       ofdpa_cmd_flow_tbl_add,
			       found, NULL, NULL);
}