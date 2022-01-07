
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {int wiphy; } ;


 int brcmf_btcoex_detach (struct brcmf_cfg80211_info*) ;
 int brcmf_free_wiphy (int ) ;
 int brcmf_pno_detach (struct brcmf_cfg80211_info*) ;
 int kfree (struct brcmf_cfg80211_info*) ;
 int wiphy_unregister (int ) ;
 int wl_deinit_priv (struct brcmf_cfg80211_info*) ;

void brcmf_cfg80211_detach(struct brcmf_cfg80211_info *cfg)
{
 if (!cfg)
  return;

 brcmf_pno_detach(cfg);
 brcmf_btcoex_detach(cfg);
 wiphy_unregister(cfg->wiphy);
 wl_deinit_priv(cfg);
 brcmf_free_wiphy(cfg->wiphy);
 kfree(cfg);
}
