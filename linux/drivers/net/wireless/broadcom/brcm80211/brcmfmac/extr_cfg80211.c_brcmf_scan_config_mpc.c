
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int dummy; } ;


 int BRCMF_FEAT_QUIRK_NEED_MPC ;
 scalar_t__ brcmf_feat_is_quirk_enabled (struct brcmf_if*,int ) ;
 int brcmf_set_mpc (struct brcmf_if*,int) ;

__attribute__((used)) static void brcmf_scan_config_mpc(struct brcmf_if *ifp, int mpc)
{
 if (brcmf_feat_is_quirk_enabled(ifp, BRCMF_FEAT_QUIRK_NEED_MPC))
  brcmf_set_mpc(ifp, mpc);
}
