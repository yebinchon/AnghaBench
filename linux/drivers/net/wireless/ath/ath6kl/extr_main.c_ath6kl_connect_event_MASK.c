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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath6kl_vif {scalar_t__ nw_type; int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; scalar_t__ reconnect_flag; TYPE_1__* aggr_cntxt; int /*<<< orphan*/  if_lock; int /*<<< orphan*/  ndev; int /*<<< orphan*/  listen_intvl_t; int /*<<< orphan*/  bss_ch; int /*<<< orphan*/  bssid; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/  usr_bss_filter; int /*<<< orphan*/  next_ep_id; scalar_t__ node_num; int /*<<< orphan*/  node_map; scalar_t__ ibss_ps_enable; } ;
typedef  enum network_type { ____Placeholder_network_type } network_type ;
struct TYPE_2__ {int /*<<< orphan*/  aggr_conn; } ;

/* Variables and functions */
 scalar_t__ ADHOC_NETWORK ; 
 int /*<<< orphan*/  CLEAR_BSSFILTER_ON_BEACON ; 
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  CONNECT_PEND ; 
 int /*<<< orphan*/  CURRENT_BSS_FILTER ; 
 int /*<<< orphan*/  ENDPOINT_2 ; 
 scalar_t__ INFRA_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct ath6kl_vif *vif, u16 channel, u8 *bssid,
			  u16 listen_int, u16 beacon_int,
			  enum network_type net_type, u8 beacon_ie_len,
			  u8 assoc_req_len, u8 assoc_resp_len,
			  u8 *assoc_info)
{
	struct ath6kl *ar = vif->ar;

	FUNC1(vif, channel, bssid,
				      listen_int, beacon_int,
				      net_type, beacon_ie_len,
				      assoc_req_len, assoc_resp_len,
				      assoc_info);

	FUNC6(vif->bssid, bssid, sizeof(vif->bssid));
	vif->bss_ch = channel;

	if (vif->nw_type == INFRA_NETWORK) {
		FUNC4(ar->wmi, vif->fw_vif_idx,
					      vif->listen_intvl_t, 0);
		FUNC2(ar, channel);
	}

	FUNC9(vif->ndev);

	/* Update connect & link status atomically */
	FUNC11(&vif->if_lock);
	FUNC10(CONNECTED, &vif->flags);
	FUNC5(CONNECT_PEND, &vif->flags);
	FUNC8(vif->ndev);
	FUNC12(&vif->if_lock);

	FUNC0(vif->aggr_cntxt->aggr_conn);
	vif->reconnect_flag = 0;

	if ((vif->nw_type == ADHOC_NETWORK) && ar->ibss_ps_enable) {
		FUNC7(ar->node_map, 0, sizeof(ar->node_map));
		ar->node_num = 0;
		ar->next_ep_id = ENDPOINT_2;
	}

	if (!ar->usr_bss_filter) {
		FUNC10(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
		FUNC3(ar->wmi, vif->fw_vif_idx,
					 CURRENT_BSS_FILTER, 0);
	}
}