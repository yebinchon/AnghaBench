#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int* ext_capab; } ;
struct ieee80211_mcs_info {int* rx_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  cap_info; struct ieee80211_mcs_info mcs; } ;
struct TYPE_9__ {TYPE_3__ extcap; TYPE_1__ ht_capb; } ;
struct mwifiex_sta_node {scalar_t__ tdls_status; int is_11n_enabled; int /*<<< orphan*/  rx_seq; TYPE_4__ tdls_cap; int /*<<< orphan*/ * ampdu_sta; int /*<<< orphan*/  max_amsdu; } ;
struct TYPE_10__ {int /*<<< orphan*/  ra_list_spinlock; } ;
struct mwifiex_private {TYPE_5__ wmm; int /*<<< orphan*/  adapter; TYPE_2__* aggr_prio_tbl; } ;
struct TYPE_7__ {int /*<<< orphan*/  ampdu_user; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_STREAM_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int IEEE80211_HT_CAP_MAX_AMSDU ; 
 int MAX_NUM_TID ; 
 int /*<<< orphan*/  MSG ; 
 int /*<<< orphan*/  MWIFIEX_TX_DATA_BUF_SIZE_4K ; 
 int /*<<< orphan*/  MWIFIEX_TX_DATA_BUF_SIZE_8K ; 
 scalar_t__ TDLS_LINK_TEARDOWN ; 
 scalar_t__ TDLS_NOT_SETUP ; 
 scalar_t__ TDLS_SETUP_COMPLETE ; 
 scalar_t__ TDLS_SETUP_FAILURE ; 
 int WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 struct mwifiex_sta_node* FUNC9 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_private*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct mwifiex_private *priv, const u8 *peer)
{
	struct mwifiex_sta_node *sta_ptr;
	struct ieee80211_mcs_info mcs;
	int i;

	sta_ptr = FUNC9(priv, peer);

	if (sta_ptr && (sta_ptr->tdls_status != TDLS_SETUP_FAILURE)) {
		FUNC7(priv->adapter, MSG,
			    "tdls: enable link %pM success\n", peer);

		sta_ptr->tdls_status = TDLS_SETUP_COMPLETE;

		mcs = sta_ptr->tdls_cap.ht_capb.mcs;
		if (mcs.rx_mask[0] != 0xff)
			sta_ptr->is_11n_enabled = true;
		if (sta_ptr->is_11n_enabled) {
			if (FUNC0(sta_ptr->tdls_cap.ht_capb.cap_info) &
			    IEEE80211_HT_CAP_MAX_AMSDU)
				sta_ptr->max_amsdu =
					MWIFIEX_TX_DATA_BUF_SIZE_8K;
			else
				sta_ptr->max_amsdu =
					MWIFIEX_TX_DATA_BUF_SIZE_4K;

			for (i = 0; i < MAX_NUM_TID; i++)
				sta_ptr->ampdu_sta[i] =
					      priv->aggr_prio_tbl[i].ampdu_user;
		} else {
			for (i = 0; i < MAX_NUM_TID; i++)
				sta_ptr->ampdu_sta[i] = BA_STREAM_NOT_ALLOWED;
		}
		if (sta_ptr->tdls_cap.extcap.ext_capab[3] &
		    WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH) {
			FUNC6(priv);
			FUNC5(priv);
		}

		FUNC1(sta_ptr->rx_seq, 0xff, sizeof(sta_ptr->rx_seq));
		FUNC10(priv, peer, TDLS_SETUP_COMPLETE);
		FUNC4(priv, peer,
						     TDLS_SETUP_COMPLETE);
	} else {
		FUNC7(priv->adapter, ERROR,
			    "tdls: enable link %pM failed\n", peer);
		if (sta_ptr) {
			FUNC2(priv);
			FUNC11(&priv->wmm.ra_list_spinlock);
			FUNC3(priv);
			FUNC12(&priv->wmm.ra_list_spinlock);
			FUNC8(priv, peer);
		}
		FUNC10(priv, peer, TDLS_LINK_TEARDOWN);
		FUNC4(priv, peer,
						     TDLS_NOT_SETUP);

		return -1;
	}

	return 0;
}