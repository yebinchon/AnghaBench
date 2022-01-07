
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_cfg80211_info {TYPE_1__* btcoex; } ;
struct TYPE_4__ {int timer_on; int work; int timer; } ;


 int TRACE ;
 int brcmf_btcoex_boost_wifi (TYPE_1__*,int) ;
 int brcmf_btcoex_restore_part1 (TYPE_1__*) ;
 int brcmf_dbg (int ,char*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree (TYPE_1__*) ;

void brcmf_btcoex_detach(struct brcmf_cfg80211_info *cfg)
{
 brcmf_dbg(TRACE, "enter\n");

 if (!cfg->btcoex)
  return;

 if (cfg->btcoex->timer_on) {
  cfg->btcoex->timer_on = 0;
  del_timer_sync(&cfg->btcoex->timer);
 }

 cancel_work_sync(&cfg->btcoex->work);

 brcmf_btcoex_boost_wifi(cfg->btcoex, 0);
 brcmf_btcoex_restore_part1(cfg->btcoex);

 kfree(cfg->btcoex);
 cfg->btcoex = ((void*)0);
}
