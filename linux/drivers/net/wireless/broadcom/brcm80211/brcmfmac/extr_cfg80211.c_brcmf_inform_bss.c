
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_scan_results {int count; scalar_t__ version; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {scalar_t__ escan_buf; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BRCMF_BSS_INFO_VERSION ;
 scalar_t__ EOPNOTSUPP ;
 int SCAN ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,int) ;
 scalar_t__ brcmf_inform_single_bss (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ;
 struct brcmf_bss_info_le* next_bss_le (struct brcmf_scan_results*,struct brcmf_bss_info_le*) ;

__attribute__((used)) static s32 brcmf_inform_bss(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_scan_results *bss_list;
 struct brcmf_bss_info_le *bi = ((void*)0);
 s32 err = 0;
 int i;

 bss_list = (struct brcmf_scan_results *)cfg->escan_info.escan_buf;
 if (bss_list->count != 0 &&
     bss_list->version != BRCMF_BSS_INFO_VERSION) {
  bphy_err(drvr, "Version %d != WL_BSS_INFO_VERSION\n",
    bss_list->version);
  return -EOPNOTSUPP;
 }
 brcmf_dbg(SCAN, "scanned AP count (%d)\n", bss_list->count);
 for (i = 0; i < bss_list->count; i++) {
  bi = next_bss_le(bss_list, bi);
  err = brcmf_inform_single_bss(cfg, bi);
  if (err)
   break;
 }
 return err;
}
