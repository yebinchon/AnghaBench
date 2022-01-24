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
typedef  void* u16 ;
struct mwifiex_private {void* assocresp_idx; void* proberesp_idx; void* beacon_idx; } ;
struct mwifiex_ie {int dummy; } ;
struct cfg80211_beacon_data {scalar_t__ assocresp_ies_len; scalar_t__ assocresp_ies; scalar_t__ proberesp_ies_len; scalar_t__ proberesp_ies; scalar_t__ beacon_ies_len; scalar_t__ beacon_ies; } ;

/* Variables and functions */
 int MGMT_MASK_ASSOC_RESP ; 
 int MGMT_MASK_BEACON ; 
 int MGMT_MASK_PROBE_RESP ; 
 int MGMT_MASK_REASSOC_RESP ; 
 void* MWIFIEX_AUTO_IDX_MASK ; 
 int /*<<< orphan*/  WLAN_OUI_MICROSOFT ; 
 int /*<<< orphan*/  WLAN_OUI_TYPE_MICROSOFT_WPS ; 
 int /*<<< orphan*/  WLAN_OUI_TYPE_WFA_P2P ; 
 int /*<<< orphan*/  WLAN_OUI_WFA ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_ie*) ; 
 int FUNC1 (struct mwifiex_private*,struct mwifiex_ie*,void**,struct mwifiex_ie*,void**,struct mwifiex_ie*,void**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,struct mwifiex_ie**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_private *priv,
					    struct cfg80211_beacon_data *data)
{
	struct mwifiex_ie *beacon_ie = NULL, *pr_ie = NULL, *ar_ie = NULL;
	u16 beacon_idx = MWIFIEX_AUTO_IDX_MASK, pr_idx = MWIFIEX_AUTO_IDX_MASK;
	u16 ar_idx = MWIFIEX_AUTO_IDX_MASK;
	int ret = 0;

	if (data->beacon_ies && data->beacon_ies_len) {
		FUNC2(data->beacon_ies, data->beacon_ies_len,
				     &beacon_ie, MGMT_MASK_BEACON,
				     WLAN_OUI_MICROSOFT,
				     WLAN_OUI_TYPE_MICROSOFT_WPS);
		FUNC2(data->beacon_ies, data->beacon_ies_len,
				     &beacon_ie, MGMT_MASK_BEACON,
				     WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P);
	}

	if (data->proberesp_ies && data->proberesp_ies_len) {
		FUNC2(data->proberesp_ies,
				     data->proberesp_ies_len, &pr_ie,
				     MGMT_MASK_PROBE_RESP, WLAN_OUI_MICROSOFT,
				     WLAN_OUI_TYPE_MICROSOFT_WPS);
		FUNC2(data->proberesp_ies,
				     data->proberesp_ies_len, &pr_ie,
				     MGMT_MASK_PROBE_RESP,
				     WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P);
	}

	if (data->assocresp_ies && data->assocresp_ies_len) {
		FUNC2(data->assocresp_ies,
				     data->assocresp_ies_len, &ar_ie,
				     MGMT_MASK_ASSOC_RESP |
				     MGMT_MASK_REASSOC_RESP,
				     WLAN_OUI_MICROSOFT,
				     WLAN_OUI_TYPE_MICROSOFT_WPS);
		FUNC2(data->assocresp_ies,
				     data->assocresp_ies_len, &ar_ie,
				     MGMT_MASK_ASSOC_RESP |
				     MGMT_MASK_REASSOC_RESP, WLAN_OUI_WFA,
				     WLAN_OUI_TYPE_WFA_P2P);
	}

	if (beacon_ie || pr_ie || ar_ie) {
		ret = FUNC1(priv, beacon_ie,
						   &beacon_idx, pr_ie,
						   &pr_idx, ar_ie, &ar_idx);
		if (ret)
			goto done;
	}

	priv->beacon_idx = beacon_idx;
	priv->proberesp_idx = pr_idx;
	priv->assocresp_idx = ar_idx;

done:
	FUNC0(beacon_ie);
	FUNC0(pr_ie);
	FUNC0(ar_ie);

	return ret;
}