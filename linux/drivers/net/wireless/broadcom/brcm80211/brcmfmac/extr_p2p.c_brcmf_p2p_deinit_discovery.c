
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_p2p_info {TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
typedef int s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_vif* vif; } ;


 size_t P2PAPI_BSSCFG_DEVICE ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int TRACE ;
 int WL_P2P_DISC_ST_SCAN ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fil_iovar_int_set (int ,char*,int ) ;
 int brcmf_p2p_set_discover_state (int ,int ,int ,int ) ;

__attribute__((used)) static s32 brcmf_p2p_deinit_discovery(struct brcmf_p2p_info *p2p)
{
 struct brcmf_cfg80211_vif *vif;

 brcmf_dbg(TRACE, "enter\n");


 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 (void)brcmf_p2p_set_discover_state(vif->ifp, WL_P2P_DISC_ST_SCAN, 0, 0);


 vif = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif;
 (void)brcmf_fil_iovar_int_set(vif->ifp, "p2p_disc", 0);

 return 0;
}
