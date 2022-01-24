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
struct iwl_mvm_tcm_iter_data {int any_sent; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__* fw; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_tcm_iter_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  iwl_mvm_tcm_iter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm)
{
	struct iwl_mvm_tcm_iter_data data = {
		.mvm = mvm,
		.any_sent = false,
	};

	FUNC3(&mvm->mutex);

	FUNC1(
		mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
		iwl_mvm_tcm_iter, &data);

	if (FUNC0(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN))
		FUNC2(mvm);

	FUNC4(&mvm->mutex);
}