
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {int dongle_up; } ;


 int brcmf_abort_scanning (struct brcmf_cfg80211_info*) ;
 int brcmf_deinit_priv_mem (struct brcmf_cfg80211_info*) ;

__attribute__((used)) static void wl_deinit_priv(struct brcmf_cfg80211_info *cfg)
{
 cfg->dongle_up = 0;
 brcmf_abort_scanning(cfg);
 brcmf_deinit_priv_mem(cfg);
}
