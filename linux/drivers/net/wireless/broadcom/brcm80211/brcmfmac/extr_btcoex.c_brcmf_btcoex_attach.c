
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {struct brcmf_btcoex_info* btcoex; } ;
struct brcmf_btcoex_info {int timer_on; int saved_regs_part1; int saved_regs_part2; int work; struct brcmf_cfg80211_info* cfg; int timer; int timeout; int bt_state; } ;


 int BRCMF_BTCOEX_OPPR_WIN_TIME ;
 int BRCMF_BT_DHCP_IDLE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int TRACE ;
 int brcmf_btcoex_handler ;
 int brcmf_btcoex_timerfunc ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_btcoex_info* kmalloc (int,int ) ;
 int timer_setup (int *,int ,int ) ;

int brcmf_btcoex_attach(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_btcoex_info *btci = ((void*)0);
 brcmf_dbg(TRACE, "enter\n");

 btci = kmalloc(sizeof(struct brcmf_btcoex_info), GFP_KERNEL);
 if (!btci)
  return -ENOMEM;

 btci->bt_state = BRCMF_BT_DHCP_IDLE;


 btci->timer_on = 0;
 btci->timeout = BRCMF_BTCOEX_OPPR_WIN_TIME;
 timer_setup(&btci->timer, brcmf_btcoex_timerfunc, 0);
 btci->cfg = cfg;
 btci->saved_regs_part1 = 0;
 btci->saved_regs_part2 = 0;

 INIT_WORK(&btci->work, brcmf_btcoex_handler);

 cfg->btcoex = btci;
 return 0;
}
