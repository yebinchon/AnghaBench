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
typedef  scalar_t__ u32 ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  color; int /*<<< orphan*/  id; TYPE_2__* channel; } ;
struct iwl_mvm_iface_iterator_data {int idx; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * ids; struct iwl_mvm_phy_ctxt* phyctxt; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_binding_cmd {void** macs; void* phy; void* action; void* id_and_color; void* lmac_id; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {scalar_t__ band; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDING_CONTEXT_CMD ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FW_CTXT_INVALID ; 
 int IWL_BINDING_CMD_SIZE_V1 ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,scalar_t__,...) ; 
 scalar_t__ IWL_LMAC_24G_INDEX ; 
 scalar_t__ IWL_LMAC_5G_INDEX ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT ; 
 int MAX_MACS_IN_BINDING ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_binding_cmd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_binding_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm, u32 action,
			       struct iwl_mvm_iface_iterator_data *data)
{
	struct iwl_binding_cmd cmd;
	struct iwl_mvm_phy_ctxt *phyctxt = data->phyctxt;
	int i, ret;
	u32 status;
	int size;

	FUNC6(&cmd, 0, sizeof(cmd));

	if (FUNC3(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT)) {
		size = sizeof(cmd);
		if (phyctxt->channel->band == NL80211_BAND_2GHZ ||
		    !FUNC4(mvm))
			cmd.lmac_id = FUNC2(IWL_LMAC_24G_INDEX);
		else
			cmd.lmac_id = FUNC2(IWL_LMAC_5G_INDEX);
	} else {
		size = IWL_BINDING_CMD_SIZE_V1;
	}

	cmd.id_and_color = FUNC2(FUNC0(phyctxt->id,
							   phyctxt->color));
	cmd.action = FUNC2(action);
	cmd.phy = FUNC2(FUNC0(phyctxt->id,
						  phyctxt->color));

	for (i = 0; i < MAX_MACS_IN_BINDING; i++)
		cmd.macs[i] = FUNC2(FW_CTXT_INVALID);
	for (i = 0; i < data->idx; i++)
		cmd.macs[i] = FUNC2(FUNC0(data->ids[i],
							      data->colors[i]));

	status = 0;
	ret = FUNC5(mvm, BINDING_CONTEXT_CMD,
					  size, &cmd, &status);
	if (ret) {
		FUNC1(mvm, "Failed to send binding (action:%d): %d\n",
			action, ret);
		return ret;
	}

	if (status) {
		FUNC1(mvm, "Binding command failed: %u\n", status);
		ret = -EIO;
	}

	return ret;
}