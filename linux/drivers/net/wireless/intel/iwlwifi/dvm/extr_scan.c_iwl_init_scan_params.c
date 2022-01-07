
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct iwl_priv {void** scan_tx_ant; TYPE_1__* nvm_data; } ;
struct TYPE_2__ {int valid_tx_ant; } ;


 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 void* fls (int ) ;

void iwl_init_scan_params(struct iwl_priv *priv)
{
 u8 ant_idx = fls(priv->nvm_data->valid_tx_ant) - 1;
 if (!priv->scan_tx_ant[NL80211_BAND_5GHZ])
  priv->scan_tx_ant[NL80211_BAND_5GHZ] = ant_idx;
 if (!priv->scan_tx_ant[NL80211_BAND_2GHZ])
  priv->scan_tx_ant[NL80211_BAND_2GHZ] = ant_idx;
}
