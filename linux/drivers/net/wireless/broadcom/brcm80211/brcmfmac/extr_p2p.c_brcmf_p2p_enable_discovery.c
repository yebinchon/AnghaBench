
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {int status; TYPE_2__* bss_idx; TYPE_1__* cfg; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
typedef int s32 ;
struct TYPE_4__ {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_3__ {struct brcmf_pub* pub; } ;


 int AES_ENABLED ;
 int BRCMF_P2P_STATUS_ENABLED ;
 int EPERM ;
 int INFO ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int TRACE ;
 int WL_P2P_DISC_ST_SCAN ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fil_bsscfg_int_set (int ,char*,int ) ;
 int brcmf_fil_iovar_int_set (int ,char*,int) ;
 int brcmf_p2p_set_discover_state (int ,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int brcmf_p2p_enable_discovery(struct brcmf_p2p_info *p2p)
{
 struct brcmf_pub *drvr = p2p->cfg->pub;
 struct brcmf_cfg80211_vif *vif;
 s32 ret = 0;

 brcmf_dbg(TRACE, "enter\n");
 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 if (!vif) {
  bphy_err(drvr, "P2P config device not available\n");
  ret = -EPERM;
  goto exit;
 }

 if (test_bit(BRCMF_P2P_STATUS_ENABLED, &p2p->status)) {
  brcmf_dbg(INFO, "P2P config device already configured\n");
  goto exit;
 }


 vif = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif;
 ret = brcmf_fil_iovar_int_set(vif->ifp, "p2p_disc", 1);
 if (ret < 0) {
  bphy_err(drvr, "set p2p_disc error\n");
  goto exit;
 }
 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 ret = brcmf_p2p_set_discover_state(vif->ifp, WL_P2P_DISC_ST_SCAN, 0, 0);
 if (ret < 0) {
  bphy_err(drvr, "unable to set WL_P2P_DISC_ST_SCAN\n");
  goto exit;
 }







 ret = brcmf_fil_bsscfg_int_set(vif->ifp, "wsec", AES_ENABLED);
 if (ret < 0) {
  bphy_err(drvr, "wsec error %d\n", ret);
  goto exit;
 }

 set_bit(BRCMF_P2P_STATUS_ENABLED, &p2p->status);
exit:
 return ret;
}
