
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {int p2pdev_dynamically; TYPE_1__* bss_idx; struct brcmf_cfg80211_info* cfg; } ;
struct brcmf_if {int vif; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; struct brcmf_p2p_info p2p; } ;
typedef int s32 ;
struct TYPE_2__ {int vif; } ;


 scalar_t__ IS_ERR (void*) ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int PTR_ERR (void*) ;
 int bphy_err (struct brcmf_pub*,char*) ;
 struct brcmf_if* brcmf_get_ifp (struct brcmf_pub*,int ) ;
 void* brcmf_p2p_create_p2pdev (struct brcmf_p2p_info*,int *,int *) ;

s32 brcmf_p2p_attach(struct brcmf_cfg80211_info *cfg, bool p2pdev_forced)
{
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_p2p_info *p2p;
 struct brcmf_if *pri_ifp;
 s32 err = 0;
 void *err_ptr;

 p2p = &cfg->p2p;
 p2p->cfg = cfg;

 pri_ifp = brcmf_get_ifp(cfg->pub, 0);
 p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif = pri_ifp->vif;

 if (p2pdev_forced) {
  err_ptr = brcmf_p2p_create_p2pdev(p2p, ((void*)0), ((void*)0));
  if (IS_ERR(err_ptr)) {
   bphy_err(drvr, "P2P device creation failed.\n");
   err = PTR_ERR(err_ptr);
  }
 } else {
  p2p->p2pdev_dynamically = 1;
 }
 return err;
}
