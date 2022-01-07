
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int escan_state; } ;
struct brcmf_cfg80211_info {int escan_timeout_work; int escan_timeout; TYPE_1__ escan_info; int pub; } ;


 int BRCMF_E_ESCAN_RESULT ;
 int INIT_WORK (int *,int ) ;
 int WL_ESCAN_STATE_IDLE ;
 int brcmf_cfg80211_escan_handler ;
 int brcmf_cfg80211_escan_timeout_worker ;
 int brcmf_escan_timeout ;
 int brcmf_fweh_register (int ,int ,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void brcmf_init_escan(struct brcmf_cfg80211_info *cfg)
{
 brcmf_fweh_register(cfg->pub, BRCMF_E_ESCAN_RESULT,
       brcmf_cfg80211_escan_handler);
 cfg->escan_info.escan_state = WL_ESCAN_STATE_IDLE;

 timer_setup(&cfg->escan_timeout, brcmf_escan_timeout, 0);
 INIT_WORK(&cfg->escan_timeout_work,
    brcmf_cfg80211_escan_timeout_worker);
}
