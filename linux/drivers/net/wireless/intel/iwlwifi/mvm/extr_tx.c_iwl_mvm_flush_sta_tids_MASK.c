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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_tx_path_flush_cmd {int /*<<< orphan*/  tid_mask; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int dummy; } ;
typedef  int /*<<< orphan*/  flush_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  TXPATH_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tx_path_flush_cmd*) ; 

int FUNC6(struct iwl_mvm *mvm, u32 sta_id,
			   u16 tids, u32 flags)
{
	int ret;
	struct iwl_tx_path_flush_cmd flush_cmd = {
		.sta_id = FUNC3(sta_id),
		.tid_mask = FUNC2(tids),
	};

	FUNC1(!FUNC4(mvm));

	ret = FUNC5(mvm, TXPATH_FLUSH, flags,
				   sizeof(flush_cmd), &flush_cmd);
	if (ret)
		FUNC0(mvm, "Failed to send flush command (%d)\n", ret);
	return ret;
}