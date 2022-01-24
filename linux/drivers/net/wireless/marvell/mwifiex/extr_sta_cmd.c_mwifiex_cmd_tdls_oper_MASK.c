#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct station_parameters {int supported_rates_len; int ext_capab_len; int aid; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  ext_capab; int /*<<< orphan*/  supported_rates; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/  capability; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; struct station_parameters* sta_params; } ;
struct TYPE_14__ {void* len; void* type; } ;
struct mwifiex_ie_types_vhtcap {int /*<<< orphan*/  vht_cap; TYPE_6__ header; } ;
struct TYPE_16__ {void* len; void* type; } ;
struct mwifiex_ie_types_tdls_idle_timeout {void* value; TYPE_8__ header; } ;
struct TYPE_10__ {void* len; void* type; } ;
struct mwifiex_ie_types_qos_info {int /*<<< orphan*/  qos_info; TYPE_2__ header; } ;
struct TYPE_11__ {void* len; void* type; } ;
struct mwifiex_ie_types_htcap {int /*<<< orphan*/  ht_cap; TYPE_3__ header; } ;
struct TYPE_13__ {void* len; void* type; } ;
struct mwifiex_ie_types_extcap {int /*<<< orphan*/ * ext_capab; TYPE_5__ header; } ;
struct TYPE_15__ {void* len; void* type; } ;
struct mwifiex_ie_types_aid {void* aid; TYPE_7__ header; } ;
struct mwifiex_ds_tdls_oper {int tdls_action; int /*<<< orphan*/  peer_mac; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct TYPE_12__ {void* len; void* type; } ;
struct host_cmd_tlv_rates {int /*<<< orphan*/ * rates; TYPE_4__ header; } ;
struct host_cmd_ds_tdls_oper {void* tdls_action; int /*<<< orphan*/ * peer_mac; scalar_t__ reason; } ;
struct TYPE_9__ {struct host_cmd_ds_tdls_oper tdls_oper; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 int ACT_TDLS_CONFIG ; 
 int ACT_TDLS_CREATE ; 
 int ACT_TDLS_DELETE ; 
 int ENODATA ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ERROR ; 
 int ETH_ALEN ; 
 int HostCmd_CMD_TDLS_OPER ; 
#define  MWIFIEX_TDLS_CONFIG_LINK 130 
#define  MWIFIEX_TDLS_CREATE_LINK 129 
#define  MWIFIEX_TDLS_DISABLE_LINK 128 
 int MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC ; 
 int S_DS_GEN ; 
 int TLV_TYPE_TDLS_IDLE_TIMEOUT ; 
 int WLAN_EID_AID ; 
 int WLAN_EID_EXT_CAPABILITY ; 
 int WLAN_EID_HT_CAPABILITY ; 
 int WLAN_EID_QOS_CAPA ; 
 int WLAN_EID_SUPP_RATES ; 
 int WLAN_EID_VHT_CAPABILITY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mwifiex_private *priv,
		      struct host_cmd_ds_command *cmd,
		      void *data_buf)
{
	struct host_cmd_ds_tdls_oper *tdls_oper = &cmd->params.tdls_oper;
	struct mwifiex_ds_tdls_oper *oper = data_buf;
	struct host_cmd_tlv_rates *tlv_rates;
	struct mwifiex_ie_types_htcap *ht_capab;
	struct mwifiex_ie_types_qos_info *wmm_qos_info;
	struct mwifiex_ie_types_extcap *extcap;
	struct mwifiex_ie_types_vhtcap *vht_capab;
	struct mwifiex_ie_types_aid *aid;
	struct mwifiex_ie_types_tdls_idle_timeout *timeout;
	u8 *pos;
	u16 config_len = 0;
	struct station_parameters *params = priv->sta_params;

	cmd->command = FUNC0(HostCmd_CMD_TDLS_OPER);
	cmd->size = FUNC0(S_DS_GEN);
	FUNC1(&cmd->size,
			       sizeof(struct host_cmd_ds_tdls_oper));

	tdls_oper->reason = 0;
	FUNC2(tdls_oper->peer_mac, oper->peer_mac, ETH_ALEN);

	pos = (u8 *)tdls_oper + sizeof(struct host_cmd_ds_tdls_oper);

	switch (oper->tdls_action) {
	case MWIFIEX_TDLS_DISABLE_LINK:
		tdls_oper->tdls_action = FUNC0(ACT_TDLS_DELETE);
		break;
	case MWIFIEX_TDLS_CREATE_LINK:
		tdls_oper->tdls_action = FUNC0(ACT_TDLS_CREATE);
		break;
	case MWIFIEX_TDLS_CONFIG_LINK:
		tdls_oper->tdls_action = FUNC0(ACT_TDLS_CONFIG);

		if (!params) {
			FUNC3(priv->adapter, ERROR,
				    "TDLS config params not available for %pM\n",
				    oper->peer_mac);
			return -ENODATA;
		}

		FUNC4(params->capability, pos);
		config_len += sizeof(params->capability);

		wmm_qos_info = (void *)(pos + config_len);
		wmm_qos_info->header.type = FUNC0(WLAN_EID_QOS_CAPA);
		wmm_qos_info->header.len =
				FUNC0(sizeof(wmm_qos_info->qos_info));
		wmm_qos_info->qos_info = 0;
		config_len += sizeof(struct mwifiex_ie_types_qos_info);

		if (params->ht_capa) {
			ht_capab = (struct mwifiex_ie_types_htcap *)(pos +
								    config_len);
			ht_capab->header.type =
					    FUNC0(WLAN_EID_HT_CAPABILITY);
			ht_capab->header.len =
				   FUNC0(sizeof(struct ieee80211_ht_cap));
			FUNC2(&ht_capab->ht_cap, params->ht_capa,
			       sizeof(struct ieee80211_ht_cap));
			config_len += sizeof(struct mwifiex_ie_types_htcap);
		}

		if (params->supported_rates && params->supported_rates_len) {
			tlv_rates = (struct host_cmd_tlv_rates *)(pos +
								  config_len);
			tlv_rates->header.type =
					       FUNC0(WLAN_EID_SUPP_RATES);
			tlv_rates->header.len =
				       FUNC0(params->supported_rates_len);
			FUNC2(tlv_rates->rates, params->supported_rates,
			       params->supported_rates_len);
			config_len += sizeof(struct host_cmd_tlv_rates) +
				      params->supported_rates_len;
		}

		if (params->ext_capab && params->ext_capab_len) {
			extcap = (struct mwifiex_ie_types_extcap *)(pos +
								    config_len);
			extcap->header.type =
					   FUNC0(WLAN_EID_EXT_CAPABILITY);
			extcap->header.len = FUNC0(params->ext_capab_len);
			FUNC2(extcap->ext_capab, params->ext_capab,
			       params->ext_capab_len);
			config_len += sizeof(struct mwifiex_ie_types_extcap) +
				      params->ext_capab_len;
		}
		if (params->vht_capa) {
			vht_capab = (struct mwifiex_ie_types_vhtcap *)(pos +
								    config_len);
			vht_capab->header.type =
					   FUNC0(WLAN_EID_VHT_CAPABILITY);
			vht_capab->header.len =
				  FUNC0(sizeof(struct ieee80211_vht_cap));
			FUNC2(&vht_capab->vht_cap, params->vht_capa,
			       sizeof(struct ieee80211_vht_cap));
			config_len += sizeof(struct mwifiex_ie_types_vhtcap);
		}
		if (params->aid) {
			aid = (struct mwifiex_ie_types_aid *)(pos + config_len);
			aid->header.type = FUNC0(WLAN_EID_AID);
			aid->header.len = FUNC0(sizeof(params->aid));
			aid->aid = FUNC0(params->aid);
			config_len += sizeof(struct mwifiex_ie_types_aid);
		}

		timeout = (void *)(pos + config_len);
		timeout->header.type = FUNC0(TLV_TYPE_TDLS_IDLE_TIMEOUT);
		timeout->header.len = FUNC0(sizeof(timeout->value));
		timeout->value = FUNC0(MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC);
		config_len += sizeof(struct mwifiex_ie_types_tdls_idle_timeout);

		break;
	default:
		FUNC3(priv->adapter, ERROR, "Unknown TDLS operation\n");
		return -ENOTSUPP;
	}

	FUNC1(&cmd->size, config_len);

	return 0;
}