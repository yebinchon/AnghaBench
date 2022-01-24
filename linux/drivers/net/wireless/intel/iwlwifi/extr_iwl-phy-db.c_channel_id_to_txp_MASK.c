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
typedef  int u8 ;
typedef  int u16 ;
struct iwl_phy_db_chg_txp {int /*<<< orphan*/  max_channel_idx; } ;
struct iwl_phy_db {int n_group_txp; TYPE_1__* calib_ch_group_txp; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct iwl_phy_db *phy_db, u16 ch_id)
{
	struct iwl_phy_db_chg_txp *txp_chg;
	int i;
	u8 ch_index = FUNC0(ch_id);
	if (ch_index == 0xff)
		return 0xff;

	for (i = 0; i < phy_db->n_group_txp; i++) {
		txp_chg = (void *)phy_db->calib_ch_group_txp[i].data;
		if (!txp_chg)
			return 0xff;
		/*
		 * Looking for the first channel group that its max channel is
		 * higher then wanted channel.
		 */
		if (FUNC1(txp_chg->max_channel_idx) >= ch_index)
			return i;
	}
	return 0xff;
}