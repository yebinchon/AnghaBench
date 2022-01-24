#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_12__ {scalar_t__ channel_profile; } ;
struct iwl_nvm_get_info_rsp_v3 {TYPE_5__ regulatory; } ;
struct TYPE_11__ {scalar_t__ channel_profile; int /*<<< orphan*/  lar_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  rx_chains; int /*<<< orphan*/  tx_chains; } ;
struct TYPE_9__ {int /*<<< orphan*/  mac_sku_flags; } ;
struct TYPE_8__ {scalar_t__ n_hw_addrs; int /*<<< orphan*/  nvm_version; int /*<<< orphan*/  flags; } ;
struct iwl_nvm_get_info_rsp {TYPE_4__ regulatory; TYPE_3__ phy_sku; TYPE_2__ mac_sku; TYPE_1__ general; } ;
struct iwl_nvm_get_info {int dummy; } ;
struct iwl_nvm_data {scalar_t__ n_hw_addrs; int sku_cap_11ac_enable; int sku_cap_11n_enable; int sku_cap_11ax_enable; int sku_cap_band_24ghz_enable; int sku_cap_band_52ghz_enable; int sku_cap_mimo_disabled; int valid_tx_ant; int valid_rx_ant; int lar_enabled; int /*<<< orphan*/  nvm_version; int /*<<< orphan*/  hw_addr; } ;
struct iwl_host_cmd {int flags; TYPE_7__* resp_pkt; int /*<<< orphan*/  id; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct iwl_fw {int valid_tx_ant; int valid_rx_ant; int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/  lar_disable; } ;

/* Variables and functions */
 int CMD_SEND_IN_RFKILL ; 
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct iwl_nvm_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  IWL_NUM_CHANNELS ; 
 int IWL_NVM_SBANDS_FLAGS_LAR ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_REGULATORY_NVM_INFO ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_LAR_SUPPORT ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,char*,int) ; 
 int NVM_GENERAL_FLAGS_EMPTY_OTP ; 
 int /*<<< orphan*/  NVM_GET_INFO ; 
 int NVM_MAC_SKU_FLAGS_802_11AC_ENABLED ; 
 int NVM_MAC_SKU_FLAGS_802_11AX_ENABLED ; 
 int NVM_MAC_SKU_FLAGS_802_11N_ENABLED ; 
 int NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED ; 
 int NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED ; 
 int NVM_MAC_SKU_FLAGS_MIMO_DISABLED ; 
 int /*<<< orphan*/  REGULATORY_AND_NVM_GROUP ; 
 scalar_t__ FUNC4 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channels ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,struct iwl_nvm_data*,void*,int,int,int,int) ; 
 size_t FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,struct iwl_nvm_data*) ; 
 int FUNC13 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 TYPE_6__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_nvm_data*) ; 
 struct iwl_nvm_data* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_nvm_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct iwl_nvm_data *FUNC19(struct iwl_trans *trans,
				 const struct iwl_fw *fw)
{
	struct iwl_nvm_get_info cmd = {};
	struct iwl_nvm_data *nvm;
	struct iwl_host_cmd hcmd = {
		.flags = CMD_WANT_SKB | CMD_SEND_IN_RFKILL,
		.data = &cmd, 
		.len = sizeof(cmd) ,
		.id = FUNC5(REGULATORY_AND_NVM_GROUP, NVM_GET_INFO)
	};
	int  ret;
	bool lar_fw_supported = !iwlwifi_mod_params.lar_disable &&
				FUNC7(&fw->ucode_capa,
					    IWL_UCODE_TLV_CAPA_LAR_SUPPORT);
	bool empty_otp;
	u32 mac_flags;
	u32 sbands_flags = 0;
	/*
	 * All the values in iwl_nvm_get_info_rsp v4 are the same as
	 * in v3, except for the channel profile part of the
	 * regulatory.  So we can just access the new struct, with the
	 * exception of the latter.
	 */
	struct iwl_nvm_get_info_rsp *rsp;
	struct iwl_nvm_get_info_rsp_v3 *rsp_v3;
	bool v4 = FUNC6(&fw->ucode_capa,
			     IWL_UCODE_TLV_API_REGULATORY_NVM_INFO);
	size_t rsp_size = v4 ? sizeof(*rsp) : sizeof(*rsp_v3);
	void *channel_profile;

	ret = FUNC13(trans, &hcmd);
	if (ret)
		return FUNC0(ret);

	if (FUNC4(FUNC11(hcmd.resp_pkt) != rsp_size,
		 "Invalid payload len in NVM response from FW %d",
		 FUNC11(hcmd.resp_pkt))) {
		ret = -EINVAL;
		goto out;
	}

	rsp = (void *)hcmd.resp_pkt->data;
	empty_otp = !!(FUNC17(rsp->general.flags) &
		       NVM_GENERAL_FLAGS_EMPTY_OTP);
	if (empty_otp)
		FUNC2(trans, "OTP is empty\n");

	nvm = FUNC15(FUNC18(nvm, channels, IWL_NUM_CHANNELS), GFP_KERNEL);
	if (!nvm) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC12(trans, nvm);
	/* TODO: if platform NVM has MAC address - override it here */

	if (!FUNC8(nvm->hw_addr)) {
		FUNC1(trans, "no valid mac address was found\n");
		ret = -EINVAL;
		goto err_free;
	}

	FUNC2(trans, "base HW address: %pM\n", nvm->hw_addr);

	/* Initialize general data */
	nvm->nvm_version = FUNC16(rsp->general.nvm_version);
	nvm->n_hw_addrs = rsp->general.n_hw_addrs;
	if (nvm->n_hw_addrs == 0)
		FUNC3(trans,
			 "Firmware declares no reserved mac addresses. OTP is empty: %d\n",
			 empty_otp);

	/* Initialize MAC sku data */
	mac_flags = FUNC17(rsp->mac_sku.mac_sku_flags);
	nvm->sku_cap_11ac_enable =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_802_11AC_ENABLED);
	nvm->sku_cap_11n_enable =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_802_11N_ENABLED);
	nvm->sku_cap_11ax_enable =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_802_11AX_ENABLED);
	nvm->sku_cap_band_24ghz_enable =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED);
	nvm->sku_cap_band_52ghz_enable =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED);
	nvm->sku_cap_mimo_disabled =
		!!(mac_flags & NVM_MAC_SKU_FLAGS_MIMO_DISABLED);

	/* Initialize PHY sku data */
	nvm->valid_tx_ant = (u8)FUNC17(rsp->phy_sku.tx_chains);
	nvm->valid_rx_ant = (u8)FUNC17(rsp->phy_sku.rx_chains);

	if (FUNC17(rsp->regulatory.lar_enabled) && lar_fw_supported) {
		nvm->lar_enabled = true;
		sbands_flags |= IWL_NVM_SBANDS_FLAGS_LAR;
	}

	rsp_v3 = (void *)rsp;
	channel_profile = v4 ? (void *)rsp->regulatory.channel_profile :
			  (void *)rsp_v3->regulatory.channel_profile;

	FUNC10(trans, nvm,
			channel_profile,
			nvm->valid_tx_ant & fw->valid_tx_ant,
			nvm->valid_rx_ant & fw->valid_rx_ant,
			sbands_flags, v4);

	FUNC9(&hcmd);
	return nvm;

err_free:
	FUNC14(nvm);
out:
	FUNC9(&hcmd);
	return FUNC0(ret);
}