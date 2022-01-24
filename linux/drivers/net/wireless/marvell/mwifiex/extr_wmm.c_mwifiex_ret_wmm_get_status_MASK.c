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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_wmm_ac_status {int /*<<< orphan*/  flow_created; int /*<<< orphan*/  flow_required; int /*<<< orphan*/  disabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  wmm_ie; } ;
struct TYPE_11__ {TYPE_4__ bss_descriptor; } ;
struct TYPE_9__ {struct mwifiex_wmm_ac_status* ac_status; } ;
struct mwifiex_private {TYPE_5__ curr_bss_params; int /*<<< orphan*/  adapter; TYPE_3__ wmm; } ;
struct mwifiex_ie_types_wmm_queue_status {size_t queue_index; int /*<<< orphan*/  flow_created; int /*<<< orphan*/  flow_required; int /*<<< orphan*/  disabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
struct mwifiex_ie_types_data {TYPE_2__ header; } ;
struct TYPE_12__ {int element_id; int /*<<< orphan*/  len; } ;
struct ieee_types_wmm_parameter {int qos_info_bitmap; TYPE_6__ vend_hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  get_wmm_status; } ;
struct host_cmd_ds_command {int /*<<< orphan*/  size; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK ; 
 int /*<<< orphan*/  INFO ; 
#define  TLV_TYPE_WMMQSTATUS 129 
#define  WLAN_EID_VENDOR_SPECIFIC 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee_types_wmm_parameter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,struct ieee_types_wmm_parameter*) ; 

int FUNC5(struct mwifiex_private *priv,
			       const struct host_cmd_ds_command *resp)
{
	u8 *curr = (u8 *) &resp->params.get_wmm_status;
	uint16_t resp_len = FUNC0(resp->size), tlv_len;
	int mask = IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK;
	bool valid = true;

	struct mwifiex_ie_types_data *tlv_hdr;
	struct mwifiex_ie_types_wmm_queue_status *tlv_wmm_qstatus;
	struct ieee_types_wmm_parameter *wmm_param_ie = NULL;
	struct mwifiex_wmm_ac_status *ac_status;

	FUNC2(priv->adapter, INFO,
		    "info: WMM: WMM_GET_STATUS cmdresp received: %d\n",
		    resp_len);

	while ((resp_len >= sizeof(tlv_hdr->header)) && valid) {
		tlv_hdr = (struct mwifiex_ie_types_data *) curr;
		tlv_len = FUNC0(tlv_hdr->header.len);

		if (resp_len < tlv_len + sizeof(tlv_hdr->header))
			break;

		switch (FUNC0(tlv_hdr->header.type)) {
		case TLV_TYPE_WMMQSTATUS:
			tlv_wmm_qstatus =
				(struct mwifiex_ie_types_wmm_queue_status *)
				tlv_hdr;
			FUNC2(priv->adapter, CMD,
				    "info: CMD_RESP: WMM_GET_STATUS:\t"
				    "QSTATUS TLV: %d, %d, %d\n",
				    tlv_wmm_qstatus->queue_index,
				    tlv_wmm_qstatus->flow_required,
				    tlv_wmm_qstatus->disabled);

			ac_status = &priv->wmm.ac_status[tlv_wmm_qstatus->
							 queue_index];
			ac_status->disabled = tlv_wmm_qstatus->disabled;
			ac_status->flow_required =
						tlv_wmm_qstatus->flow_required;
			ac_status->flow_created = tlv_wmm_qstatus->flow_created;
			break;

		case WLAN_EID_VENDOR_SPECIFIC:
			/*
			 * Point the regular IEEE IE 2 bytes into the Marvell IE
			 *   and setup the IEEE IE type and length byte fields
			 */

			wmm_param_ie =
				(struct ieee_types_wmm_parameter *) (curr +
								    2);
			wmm_param_ie->vend_hdr.len = (u8) tlv_len;
			wmm_param_ie->vend_hdr.element_id =
						WLAN_EID_VENDOR_SPECIFIC;

			FUNC2(priv->adapter, CMD,
				    "info: CMD_RESP: WMM_GET_STATUS:\t"
				    "WMM Parameter Set Count: %d\n",
				    wmm_param_ie->qos_info_bitmap & mask);

			FUNC1((u8 *) &priv->curr_bss_params.bss_descriptor.
			       wmm_ie, wmm_param_ie,
			       wmm_param_ie->vend_hdr.len + 2);

			break;

		default:
			valid = false;
			break;
		}

		curr += (tlv_len + sizeof(tlv_hdr->header));
		resp_len -= (tlv_len + sizeof(tlv_hdr->header));
	}

	FUNC4(priv, wmm_param_ie);
	FUNC3(priv);

	return 0;
}