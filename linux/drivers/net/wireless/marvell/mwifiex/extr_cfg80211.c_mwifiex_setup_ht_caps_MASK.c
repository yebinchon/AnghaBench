#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tx_params; } ;
typedef  TYPE_1__ u8 ;
struct mwifiex_private {scalar_t__ bss_mode; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ user_dev_mcs_support; int /*<<< orphan*/  hw_dot_11n_dev_cap; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; TYPE_1__ mcs; int /*<<< orphan*/  ampdu_density; int /*<<< orphan*/  ampdu_factor; } ;
struct ieee80211_mcs_info {int /*<<< orphan*/  rx_mask; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ HT_STREAM_2X2 ; 
 int IEEE80211_HT_CAP_40MHZ_INTOLERANT ; 
 int IEEE80211_HT_CAP_GRN_FLD ; 
 int IEEE80211_HT_CAP_LDPC_CODING ; 
 int IEEE80211_HT_CAP_MAX_AMSDU ; 
 int IEEE80211_HT_CAP_RX_STBC_SHIFT ; 
 int IEEE80211_HT_CAP_SGI_20 ; 
 int IEEE80211_HT_CAP_SGI_40 ; 
 int IEEE80211_HT_CAP_SM_PS ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int IEEE80211_HT_CAP_TX_STBC ; 
 int /*<<< orphan*/  IEEE80211_HT_MAX_AMPDU_64K ; 
 int /*<<< orphan*/  IEEE80211_HT_MCS_TX_DEFINED ; 
 int /*<<< orphan*/  IEEE80211_HT_MPDU_DENSITY_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211_sta_ht_cap *ht_info,
		      struct mwifiex_private *priv)
{
	int rx_mcs_supp;
	struct ieee80211_mcs_info mcs_set;
	u8 *mcs = (u8 *)&mcs_set;
	struct mwifiex_adapter *adapter = priv->adapter;

	ht_info->ht_supported = true;
	ht_info->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
	ht_info->ampdu_density = IEEE80211_HT_MPDU_DENSITY_NONE;

	FUNC10(&ht_info->mcs, 0, sizeof(ht_info->mcs));

	/* Fill HT capability information */
	if (FUNC2(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;

	if (FUNC5(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_SGI_20;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_SGI_20;

	if (FUNC6(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_SGI_40;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_SGI_40;

	if (adapter->user_dev_mcs_support == HT_STREAM_2X2)
		ht_info->cap |= 2 << IEEE80211_HT_CAP_RX_STBC_SHIFT;
	else
		ht_info->cap |= 1 << IEEE80211_HT_CAP_RX_STBC_SHIFT;

	if (FUNC7(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_TX_STBC;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_TX_STBC;

	if (FUNC3(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_GRN_FLD;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_GRN_FLD;

	if (FUNC1(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_40MHZ_INTOLERANT;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_40MHZ_INTOLERANT;

	if (FUNC4(adapter->hw_dot_11n_dev_cap))
		ht_info->cap |= IEEE80211_HT_CAP_LDPC_CODING;
	else
		ht_info->cap &= ~IEEE80211_HT_CAP_LDPC_CODING;

	ht_info->cap &= ~IEEE80211_HT_CAP_MAX_AMSDU;
	ht_info->cap |= IEEE80211_HT_CAP_SM_PS;

	rx_mcs_supp = FUNC0(adapter->user_dev_mcs_support);
	/* Set MCS for 1x1/2x2 */
	FUNC10(mcs, 0xff, rx_mcs_supp);
	/* Clear all the other values */
	FUNC10(&mcs[rx_mcs_supp], 0,
	       sizeof(struct ieee80211_mcs_info) - rx_mcs_supp);
	if (priv->bss_mode == NL80211_IFTYPE_STATION ||
	    FUNC2(adapter->hw_dot_11n_dev_cap))
		/* Set MCS32 for infra mode or ad-hoc mode with 40MHz support */
		FUNC8(mcs_set.rx_mask);

	FUNC9((u8 *) &ht_info->mcs, mcs, sizeof(struct ieee80211_mcs_info));

	ht_info->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
}