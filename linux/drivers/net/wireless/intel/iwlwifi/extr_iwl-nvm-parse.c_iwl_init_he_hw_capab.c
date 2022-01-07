
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_supported_band {int n_iftype_data; TYPE_3__* iftype_data; } ;
struct TYPE_5__ {int * phy_cap_info; } ;
struct TYPE_6__ {TYPE_1__ he_cap_elem; } ;
struct TYPE_7__ {TYPE_2__ he_cap; } ;


 int ANT_AB ;
 int ARRAY_SIZE (TYPE_3__*) ;
 int IEEE80211_HE_PHY_CAP1_MIDAMBLE_RX_TX_MAX_NSTS ;
 int IEEE80211_HE_PHY_CAP2_MIDAMBLE_RX_TX_MAX_NSTS ;
 int IEEE80211_HE_PHY_CAP7_MAX_NC_MASK ;
 TYPE_3__* iwl_he_capa ;

__attribute__((used)) static void iwl_init_he_hw_capab(struct ieee80211_supported_band *sband,
     u8 tx_chains, u8 rx_chains)
{
 sband->iftype_data = iwl_he_capa;
 sband->n_iftype_data = ARRAY_SIZE(iwl_he_capa);


 if ((tx_chains & rx_chains) != ANT_AB) {
  int i;

  for (i = 0; i < sband->n_iftype_data; i++) {
   iwl_he_capa[i].he_cap.he_cap_elem.phy_cap_info[1] &=
    ~IEEE80211_HE_PHY_CAP1_MIDAMBLE_RX_TX_MAX_NSTS;
   iwl_he_capa[i].he_cap.he_cap_elem.phy_cap_info[2] &=
    ~IEEE80211_HE_PHY_CAP2_MIDAMBLE_RX_TX_MAX_NSTS;
   iwl_he_capa[i].he_cap.he_cap_elem.phy_cap_info[7] &=
    ~IEEE80211_HE_PHY_CAP7_MAX_NC_MASK;
  }
 }
}
