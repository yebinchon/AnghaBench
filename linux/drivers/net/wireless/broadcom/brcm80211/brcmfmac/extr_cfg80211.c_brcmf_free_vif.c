
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_vif {int list; } ;


 int kfree (struct brcmf_cfg80211_vif*) ;
 int list_del (int *) ;

void brcmf_free_vif(struct brcmf_cfg80211_vif *vif)
{
 list_del(&vif->list);
 kfree(vif);
}
