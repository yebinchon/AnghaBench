#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  noa_attr; int /*<<< orphan*/  noa_active; } ;
struct iwl_probe_resp_data {scalar_t__ noa_len; TYPE_4__ notif; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  probe_resp_data; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vendor_ie {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct TYPE_6__ {scalar_t__ variable; } ;
struct TYPE_7__ {TYPE_2__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int WLAN_OUI_TYPE_WFA_P2P ; 
 int WLAN_OUI_WFA ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*,int,int) ; 
 struct iwl_mvm_vif* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct iwl_probe_resp_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int* FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct iwl_mvm *mvm,
				       struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct iwl_mvm_vif *mvmvif =
		FUNC4(info->control.vif);
	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
	int base_len = (u8 *)mgmt->u.probe_resp.variable - (u8 *)mgmt;
	struct iwl_probe_resp_data *resp_data;
	u8 *ie, *pos;
	u8 match[] = {
		(WLAN_OUI_WFA >> 16) & 0xff,
		(WLAN_OUI_WFA >> 8) & 0xff,
		WLAN_OUI_WFA & 0xff,
		WLAN_OUI_TYPE_WFA_P2P,
	};

	FUNC8();

	resp_data = FUNC7(mvmvif->probe_resp_data);
	if (!resp_data)
		goto out;

	if (!resp_data->notif.noa_active)
		goto out;

	ie = (u8 *)FUNC3(WLAN_EID_VENDOR_SPECIFIC,
					  mgmt->u.probe_resp.variable,
					  skb->len - base_len,
					  match, 4, 2);
	if (!ie) {
		FUNC1(mvm, "probe resp doesn't have P2P IE\n");
		goto out;
	}

	if (FUNC11(skb) < resp_data->noa_len) {
		if (FUNC6(skb, 0, resp_data->noa_len, GFP_ATOMIC)) {
			FUNC2(mvm,
				"Failed to reallocate probe resp\n");
			goto out;
		}
	}

	pos = FUNC10(skb, resp_data->noa_len);

	*pos++ = WLAN_EID_VENDOR_SPECIFIC;
	/* Set length of IE body (not including ID and length itself) */
	*pos++ = resp_data->noa_len - 2;
	*pos++ = (WLAN_OUI_WFA >> 16) & 0xff;
	*pos++ = (WLAN_OUI_WFA >> 8) & 0xff;
	*pos++ = WLAN_OUI_WFA & 0xff;
	*pos++ = WLAN_OUI_TYPE_WFA_P2P;

	FUNC5(pos, &resp_data->notif.noa_attr,
	       resp_data->noa_len - sizeof(struct ieee80211_vendor_ie));

out:
	FUNC9();
}