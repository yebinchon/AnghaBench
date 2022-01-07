
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {int pwr_save; int dongle_up; int vif_disabled; int conf; int usr_sync; int * scan_request; } ;
typedef scalar_t__ s32 ;


 int brcmf_init_conf (int ) ;
 int brcmf_init_escan (struct brcmf_cfg80211_info*) ;
 scalar_t__ brcmf_init_priv_mem (struct brcmf_cfg80211_info*) ;
 int brcmf_register_event_handlers (struct brcmf_cfg80211_info*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static s32 wl_init_priv(struct brcmf_cfg80211_info *cfg)
{
 s32 err = 0;

 cfg->scan_request = ((void*)0);
 cfg->pwr_save = 1;
 cfg->dongle_up = 0;
 err = brcmf_init_priv_mem(cfg);
 if (err)
  return err;
 brcmf_register_event_handlers(cfg);
 mutex_init(&cfg->usr_sync);
 brcmf_init_escan(cfg);
 brcmf_init_conf(cfg->conf);
 init_completion(&cfg->vif_disabled);
 return err;
}
