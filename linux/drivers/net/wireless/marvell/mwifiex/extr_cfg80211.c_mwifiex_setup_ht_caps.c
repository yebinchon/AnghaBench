
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tx_params; } ;
typedef TYPE_1__ u8 ;
struct mwifiex_private {scalar_t__ bss_mode; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ user_dev_mcs_support; int hw_dot_11n_dev_cap; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; TYPE_1__ mcs; int ampdu_density; int ampdu_factor; } ;
struct ieee80211_mcs_info {int rx_mask; } ;


 int GET_RXMCSSUPP (scalar_t__) ;
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
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MPDU_DENSITY_NONE ;
 scalar_t__ ISENABLED_40MHZ_INTOLERANT (int ) ;
 scalar_t__ ISSUPP_CHANWIDTH40 (int ) ;
 scalar_t__ ISSUPP_GREENFIELD (int ) ;
 scalar_t__ ISSUPP_RXLDPC (int ) ;
 scalar_t__ ISSUPP_SHORTGI20 (int ) ;
 scalar_t__ ISSUPP_SHORTGI40 (int ) ;
 scalar_t__ ISSUPP_TXSTBC (int ) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SETHT_MCS32 (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void
mwifiex_setup_ht_caps(struct ieee80211_sta_ht_cap *ht_info,
        struct mwifiex_private *priv)
{
 int rx_mcs_supp;
 struct ieee80211_mcs_info mcs_set;
 u8 *mcs = (u8 *)&mcs_set;
 struct mwifiex_adapter *adapter = priv->adapter;

 ht_info->ht_supported = 1;
 ht_info->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
 ht_info->ampdu_density = IEEE80211_HT_MPDU_DENSITY_NONE;

 memset(&ht_info->mcs, 0, sizeof(ht_info->mcs));


 if (ISSUPP_CHANWIDTH40(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;

 if (ISSUPP_SHORTGI20(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_SGI_20;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_SGI_20;

 if (ISSUPP_SHORTGI40(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_SGI_40;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_SGI_40;

 if (adapter->user_dev_mcs_support == HT_STREAM_2X2)
  ht_info->cap |= 2 << IEEE80211_HT_CAP_RX_STBC_SHIFT;
 else
  ht_info->cap |= 1 << IEEE80211_HT_CAP_RX_STBC_SHIFT;

 if (ISSUPP_TXSTBC(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_TX_STBC;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_TX_STBC;

 if (ISSUPP_GREENFIELD(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_GRN_FLD;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_GRN_FLD;

 if (ISENABLED_40MHZ_INTOLERANT(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_40MHZ_INTOLERANT;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_40MHZ_INTOLERANT;

 if (ISSUPP_RXLDPC(adapter->hw_dot_11n_dev_cap))
  ht_info->cap |= IEEE80211_HT_CAP_LDPC_CODING;
 else
  ht_info->cap &= ~IEEE80211_HT_CAP_LDPC_CODING;

 ht_info->cap &= ~IEEE80211_HT_CAP_MAX_AMSDU;
 ht_info->cap |= IEEE80211_HT_CAP_SM_PS;

 rx_mcs_supp = GET_RXMCSSUPP(adapter->user_dev_mcs_support);

 memset(mcs, 0xff, rx_mcs_supp);

 memset(&mcs[rx_mcs_supp], 0,
        sizeof(struct ieee80211_mcs_info) - rx_mcs_supp);
 if (priv->bss_mode == NL80211_IFTYPE_STATION ||
     ISSUPP_CHANWIDTH40(adapter->hw_dot_11n_dev_cap))

  SETHT_MCS32(mcs_set.rx_mask);

 memcpy((u8 *) &ht_info->mcs, mcs, sizeof(struct ieee80211_mcs_info));

 ht_info->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
}
