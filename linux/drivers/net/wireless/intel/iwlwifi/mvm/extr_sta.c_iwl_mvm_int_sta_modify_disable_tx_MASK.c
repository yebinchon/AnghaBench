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
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_int_sta {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  station_flags_msk; int /*<<< orphan*/  station_flags; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  add_modify; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  STA_FLG_DISABLE_TX ; 
 int /*<<< orphan*/  STA_MODE_MODIFY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_add_sta_cmd*) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm,
					      struct iwl_mvm_vif *mvmvif,
					      struct iwl_mvm_int_sta *sta,
					      bool disable)
{
	u32 id = FUNC0(mvmvif->id, mvmvif->color);
	struct iwl_mvm_add_sta_cmd cmd = {
		.add_modify = STA_MODE_MODIFY,
		.sta_id = sta->sta_id,
		.station_flags = disable ? FUNC2(STA_FLG_DISABLE_TX) : 0,
		.station_flags_msk = FUNC2(STA_FLG_DISABLE_TX),
		.mac_id_n_color = FUNC2(id),
	};
	int ret;

	ret = FUNC4(mvm, ADD_STA, 0,
				   FUNC3(mvm), &cmd);
	if (ret)
		FUNC1(mvm, "Failed to send ADD_STA command (%d)\n", ret);
}