#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_scan_req_umac_tail_v2 {int dummy; } ;
struct iwl_scan_req_umac_tail_v1 {int dummy; } ;
struct iwl_scan_req_lmac {int dummy; } ;
struct iwl_scan_probe_req_v1 {int dummy; } ;
struct iwl_scan_channel_cfg_umac {int dummy; } ;
struct iwl_scan_channel_cfg_lmac {int dummy; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct TYPE_4__ {int n_scan_channels; } ;
struct TYPE_3__ {TYPE_2__ ucode_capa; } ;

/* Variables and functions */
 int IWL_SCAN_REQ_UMAC_SIZE_V1 ; 
 int IWL_SCAN_REQ_UMAC_SIZE_V6 ; 
 int IWL_SCAN_REQ_UMAC_SIZE_V7 ; 
 int IWL_SCAN_REQ_UMAC_SIZE_V8 ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*) ; 

int FUNC5(struct iwl_mvm *mvm)
{
	int base_size = IWL_SCAN_REQ_UMAC_SIZE_V1;
	int tail_size;

	if (FUNC3(mvm))
		base_size = IWL_SCAN_REQ_UMAC_SIZE_V8;
	else if (FUNC2(mvm))
		base_size = IWL_SCAN_REQ_UMAC_SIZE_V7;
	else if (FUNC1(mvm))
		base_size = IWL_SCAN_REQ_UMAC_SIZE_V6;

	if (FUNC0(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
		if (FUNC4(mvm))
			tail_size = sizeof(struct iwl_scan_req_umac_tail_v2);
		else
			tail_size = sizeof(struct iwl_scan_req_umac_tail_v1);

		return base_size +
			sizeof(struct iwl_scan_channel_cfg_umac) *
				mvm->fw->ucode_capa.n_scan_channels +
			tail_size;
	}
	return sizeof(struct iwl_scan_req_lmac) +
		sizeof(struct iwl_scan_channel_cfg_lmac) *
		mvm->fw->ucode_capa.n_scan_channels +
		sizeof(struct iwl_scan_probe_req_v1);
}