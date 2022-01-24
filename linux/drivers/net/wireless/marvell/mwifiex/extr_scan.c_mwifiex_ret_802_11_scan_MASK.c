#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_11__ {TYPE_4__* wiphy; } ;
struct mwifiex_private {TYPE_5__ wdev; struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie_types_tsf_timestamp {int /*<<< orphan*/ * tsf_data; } ;
struct mwifiex_ie_types_data {int dummy; } ;
struct mwifiex_ie_types_chan_band_list_param_set {struct chan_band_param_set* chan_band_param; } ;
struct mwifiex_adapter {TYPE_6__* nd_info; } ;
struct host_cmd_ds_802_11_scan_rsp {int number_of_sets; int* bss_desc_and_tlv_buffer; int /*<<< orphan*/  bss_descript_size; } ;
struct TYPE_7__ {struct host_cmd_ds_802_11_scan_rsp scan_resp; } ;
struct TYPE_8__ {struct host_cmd_ds_802_11_scan_rsp scan_resp; TYPE_1__ bg_scan_query_resp; } ;
struct host_cmd_ds_command {int /*<<< orphan*/  size; TYPE_2__ params; int /*<<< orphan*/  command; } ;
struct chan_band_param_set {int radio_type; int /*<<< orphan*/  chan_number; } ;
struct cfg80211_wowlan_nd_match {int n_channels; int /*<<< orphan*/ * channels; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
typedef  int /*<<< orphan*/  fw_tsf ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_12__ {int n_matches; struct cfg80211_wowlan_nd_match** matches; } ;
struct TYPE_10__ {TYPE_3__* wowlan_config; } ;
struct TYPE_9__ {struct cfg80211_sched_scan_request* nd_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HostCmd_CMD_802_11_BG_SCAN_QUERY ; 
 int /*<<< orphan*/  INFO ; 
 int MWIFIEX_MAX_AP ; 
 int S_DS_GEN ; 
 int /*<<< orphan*/  TLV_TYPE_CHANNELBANDLIST ; 
 int /*<<< orphan*/  TLV_TYPE_TSFTIMESTAMP ; 
 int TSF_DATA_SIZE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct mwifiex_private*,int**,int*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_adapter*,struct mwifiex_ie_types_data*,int,int /*<<< orphan*/ ,struct mwifiex_ie_types_data**) ; 

int FUNC9(struct mwifiex_private *priv,
			    struct host_cmd_ds_command *resp)
{
	int ret = 0;
	struct mwifiex_adapter *adapter = priv->adapter;
	struct host_cmd_ds_802_11_scan_rsp *scan_rsp;
	struct mwifiex_ie_types_data *tlv_data;
	struct mwifiex_ie_types_tsf_timestamp *tsf_tlv;
	u8 *bss_info;
	u32 scan_resp_size;
	u32 bytes_left;
	u32 idx;
	u32 tlv_buf_size;
	struct mwifiex_ie_types_chan_band_list_param_set *chan_band_tlv;
	struct chan_band_param_set *chan_band;
	u8 is_bgscan_resp;
	__le64 fw_tsf = 0;
	u8 *radio_type;
	struct cfg80211_wowlan_nd_match *pmatch;
	struct cfg80211_sched_scan_request *nd_config = NULL;

	is_bgscan_resp = (FUNC1(resp->command)
			  == HostCmd_CMD_802_11_BG_SCAN_QUERY);
	if (is_bgscan_resp)
		scan_rsp = &resp->params.bg_scan_query_resp.scan_resp;
	else
		scan_rsp = &resp->params.scan_resp;


	if (scan_rsp->number_of_sets > MWIFIEX_MAX_AP) {
		FUNC6(adapter, ERROR,
			    "SCAN_RESP: too many AP returned (%d)\n",
			    scan_rsp->number_of_sets);
		ret = -1;
		goto check_next_scan;
	}

	/* Check csa channel expiry before parsing scan response */
	FUNC4(priv);

	bytes_left = FUNC1(scan_rsp->bss_descript_size);
	FUNC6(adapter, INFO,
		    "info: SCAN_RESP: bss_descript_size %d\n",
		    bytes_left);

	scan_resp_size = FUNC1(resp->size);

	FUNC6(adapter, INFO,
		    "info: SCAN_RESP: returned %d APs before parsing\n",
		    scan_rsp->number_of_sets);

	bss_info = scan_rsp->bss_desc_and_tlv_buffer;

	/*
	 * The size of the TLV buffer is equal to the entire command response
	 *   size (scan_resp_size) minus the fixed fields (sizeof()'s), the
	 *   BSS Descriptions (bss_descript_size as bytesLef) and the command
	 *   response header (S_DS_GEN)
	 */
	tlv_buf_size = scan_resp_size - (bytes_left
					 + sizeof(scan_rsp->bss_descript_size)
					 + sizeof(scan_rsp->number_of_sets)
					 + S_DS_GEN);

	tlv_data = (struct mwifiex_ie_types_data *) (scan_rsp->
						 bss_desc_and_tlv_buffer +
						 bytes_left);

	/* Search the TLV buffer space in the scan response for any valid
	   TLVs */
	FUNC8(adapter, tlv_data, tlv_buf_size,
					     TLV_TYPE_TSFTIMESTAMP,
					     (struct mwifiex_ie_types_data **)
					     &tsf_tlv);

	/* Search the TLV buffer space in the scan response for any valid
	   TLVs */
	FUNC8(adapter, tlv_data, tlv_buf_size,
					     TLV_TYPE_CHANNELBANDLIST,
					     (struct mwifiex_ie_types_data **)
					     &chan_band_tlv);

#ifdef CONFIG_PM
	if (priv->wdev.wiphy->wowlan_config)
		nd_config = priv->wdev.wiphy->wowlan_config->nd_config;
#endif

	if (nd_config) {
		adapter->nd_info =
			FUNC0(sizeof(struct cfg80211_wowlan_nd_match) +
				sizeof(struct cfg80211_wowlan_nd_match *) *
				scan_rsp->number_of_sets, GFP_ATOMIC);

		if (adapter->nd_info)
			adapter->nd_info->n_matches = scan_rsp->number_of_sets;
	}

	for (idx = 0; idx < scan_rsp->number_of_sets && bytes_left; idx++) {
		/*
		 * If the TSF TLV was appended to the scan results, save this
		 * entry's TSF value in the fw_tsf field. It is the firmware's
		 * TSF value at the time the beacon or probe response was
		 * received.
		 */
		if (tsf_tlv)
			FUNC3(&fw_tsf, &tsf_tlv->tsf_data[idx * TSF_DATA_SIZE],
			       sizeof(fw_tsf));

		if (chan_band_tlv) {
			chan_band = &chan_band_tlv->chan_band_param[idx];
			radio_type = &chan_band->radio_type;
		} else {
			radio_type = NULL;
		}

		if (chan_band_tlv && adapter->nd_info) {
			adapter->nd_info->matches[idx] =
				FUNC0(sizeof(*pmatch) + sizeof(u32),
					GFP_ATOMIC);

			pmatch = adapter->nd_info->matches[idx];

			if (pmatch) {
				pmatch->n_channels = 1;
				pmatch->channels[0] = chan_band->chan_number;
			}
		}

		ret = FUNC7(priv, &bss_info,
							&bytes_left,
							FUNC2(fw_tsf),
							radio_type, false, 0);
		if (ret)
			goto check_next_scan;
	}

check_next_scan:
	FUNC5(priv);
	return ret;
}