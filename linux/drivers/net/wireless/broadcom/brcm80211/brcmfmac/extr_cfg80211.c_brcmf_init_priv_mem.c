
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_wowlan_nd_match {int dummy; } ;
struct TYPE_4__ {void* escan_buf; } ;
struct TYPE_3__ {void* nd_info; void* nd; } ;
struct brcmf_cfg80211_info {TYPE_2__ escan_info; TYPE_1__ wowl; void* extra_buf; void* conf; } ;
typedef int s32 ;


 int BRCMF_ESCAN_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL_EXTRA_BUF_MAX ;
 int brcmf_deinit_priv_mem (struct brcmf_cfg80211_info*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static s32 brcmf_init_priv_mem(struct brcmf_cfg80211_info *cfg)
{
 cfg->conf = kzalloc(sizeof(*cfg->conf), GFP_KERNEL);
 if (!cfg->conf)
  goto init_priv_mem_out;
 cfg->extra_buf = kzalloc(WL_EXTRA_BUF_MAX, GFP_KERNEL);
 if (!cfg->extra_buf)
  goto init_priv_mem_out;
 cfg->wowl.nd = kzalloc(sizeof(*cfg->wowl.nd) + sizeof(u32), GFP_KERNEL);
 if (!cfg->wowl.nd)
  goto init_priv_mem_out;
 cfg->wowl.nd_info = kzalloc(sizeof(*cfg->wowl.nd_info) +
        sizeof(struct cfg80211_wowlan_nd_match *),
        GFP_KERNEL);
 if (!cfg->wowl.nd_info)
  goto init_priv_mem_out;
 cfg->escan_info.escan_buf = kzalloc(BRCMF_ESCAN_BUF_SIZE, GFP_KERNEL);
 if (!cfg->escan_info.escan_buf)
  goto init_priv_mem_out;

 return 0;

init_priv_mem_out:
 brcmf_deinit_priv_mem(cfg);

 return -ENOMEM;
}
