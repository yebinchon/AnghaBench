
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pno_info {int req_lock; int n_reqs; } ;
struct brcmf_cfg80211_info {struct brcmf_pno_info* pno; } ;


 int TRACE ;
 int WARN_ON (int ) ;
 int brcmf_dbg (int ,char*) ;
 int kfree (struct brcmf_pno_info*) ;
 int mutex_destroy (int *) ;

void brcmf_pno_detach(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_pno_info *pi;

 brcmf_dbg(TRACE, "enter\n");
 pi = cfg->pno;
 cfg->pno = ((void*)0);

 WARN_ON(pi->n_reqs);
 mutex_destroy(&pi->req_lock);
 kfree(pi);
}
