
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_sta {int dummy; } ;
struct brcms_c_info {int hw; } ;


 int brcms_c_inval_dma_pkts (int ,struct ieee80211_sta*,int ) ;
 int dma_cb_fn_ampdu ;

void brcms_c_ampdu_flush(struct brcms_c_info *wlc,
       struct ieee80211_sta *sta, u16 tid)
{
 brcms_c_inval_dma_pkts(wlc->hw, sta, dma_cb_fn_ampdu);
}
