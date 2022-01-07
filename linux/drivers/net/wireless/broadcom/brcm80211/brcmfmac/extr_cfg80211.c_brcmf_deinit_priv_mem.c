
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * escan_buf; } ;
struct TYPE_4__ {int * nd_info; int * nd; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; TYPE_2__ wowl; int * extra_buf; int * conf; } ;


 int kfree (int *) ;

__attribute__((used)) static void brcmf_deinit_priv_mem(struct brcmf_cfg80211_info *cfg)
{
 kfree(cfg->conf);
 cfg->conf = ((void*)0);
 kfree(cfg->extra_buf);
 cfg->extra_buf = ((void*)0);
 kfree(cfg->wowl.nd);
 cfg->wowl.nd = ((void*)0);
 kfree(cfg->wowl.nd_info);
 cfg->wowl.nd_info = ((void*)0);
 kfree(cfg->escan_info.escan_buf);
 cfg->escan_info.escan_buf = ((void*)0);
}
