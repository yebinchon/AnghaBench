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
struct iwl_mvm_int_sta {size_t sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;

/* Variables and functions */
 size_t IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm_int_sta*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct iwl_mvm *mvm, struct iwl_mvm_int_sta *sta)
{
	FUNC0(mvm->fw_id_to_mac_id[sta->sta_id], NULL);
	FUNC1(sta, 0, sizeof(struct iwl_mvm_int_sta));
	sta->sta_id = IWL_MVM_INVALID_STA;
}