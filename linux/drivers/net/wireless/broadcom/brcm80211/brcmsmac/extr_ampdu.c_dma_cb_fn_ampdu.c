
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_info {int flags; struct ieee80211_sta** rate_driver_data; } ;
struct ieee80211_sta {int dummy; } ;


 int IEEE80211_TX_CTL_AMPDU ;

__attribute__((used)) static void dma_cb_fn_ampdu(void *txi, void *arg_a)
{
 struct ieee80211_sta *sta = arg_a;
 struct ieee80211_tx_info *tx_info = (struct ieee80211_tx_info *)txi;

 if ((tx_info->flags & IEEE80211_TX_CTL_AMPDU) &&
     (tx_info->rate_driver_data[0] == sta || sta == ((void*)0)))
  tx_info->rate_driver_data[0] = ((void*)0);
}
