
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {scalar_t__ probe_resp; scalar_t__ beacon; struct brcms_c_info* hw; struct brcms_c_info** bandstate; struct brcms_c_info* corestate; struct brcms_c_info* macstat_snapshot; struct brcms_c_info* stf; struct brcms_c_info* protection; struct brcms_c_info* default_bss; struct brcms_c_info* modulecb; struct brcms_c_info* pub; int bsscfg; } ;


 int brcms_c_bsscfg_mfree (int ) ;
 int dev_kfree_skb_any (scalar_t__) ;
 int kfree (struct brcms_c_info*) ;

__attribute__((used)) static void brcms_c_detach_mfree(struct brcms_c_info *wlc)
{
 if (wlc == ((void*)0))
  return;

 brcms_c_bsscfg_mfree(wlc->bsscfg);
 kfree(wlc->pub);
 kfree(wlc->modulecb);
 kfree(wlc->default_bss);
 kfree(wlc->protection);
 kfree(wlc->stf);
 kfree(wlc->bandstate[0]);
 if (wlc->corestate)
  kfree(wlc->corestate->macstat_snapshot);
 kfree(wlc->corestate);
 if (wlc->hw)
  kfree(wlc->hw->bandstate[0]);
 kfree(wlc->hw);
 if (wlc->beacon)
  dev_kfree_skb_any(wlc->beacon);
 if (wlc->probe_resp)
  dev_kfree_skb_any(wlc->probe_resp);

 kfree(wlc);
}
