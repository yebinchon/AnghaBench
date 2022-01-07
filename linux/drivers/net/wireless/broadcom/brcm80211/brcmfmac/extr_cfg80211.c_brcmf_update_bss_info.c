
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct brcmf_tlv {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int vif; } ;
struct brcmf_cfg80211_info {scalar_t__ extra_buf; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int ie_length; int ie_offset; } ;
typedef scalar_t__ s32 ;
typedef int __le32 ;


 int BRCMF_C_GET_BSS_INFO ;
 int TRACE ;
 int WLAN_EID_TIM ;
 int WL_EXTRA_BUF_MAX ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*) ;
 scalar_t__ brcmf_fil_cmd_data_get (struct brcmf_if*,int ,scalar_t__,int ) ;
 scalar_t__ brcmf_fil_iovar_int_get (struct brcmf_if*,char*,int *) ;
 scalar_t__ brcmf_inform_single_bss (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ;
 scalar_t__ brcmf_is_ibssmode (int ) ;
 struct brcmf_tlv* brcmf_parse_tlvs (int *,size_t,int ) ;
 int cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static s32 brcmf_update_bss_info(struct brcmf_cfg80211_info *cfg,
     struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_bss_info_le *bi;
 const struct brcmf_tlv *tim;
 size_t ie_len;
 u8 *ie;
 s32 err = 0;

 brcmf_dbg(TRACE, "Enter\n");
 if (brcmf_is_ibssmode(ifp->vif))
  return err;

 *(__le32 *)cfg->extra_buf = cpu_to_le32(WL_EXTRA_BUF_MAX);
 err = brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_BSS_INFO,
         cfg->extra_buf, WL_EXTRA_BUF_MAX);
 if (err) {
  bphy_err(drvr, "Could not get bss info %d\n", err);
  goto update_bss_info_out;
 }

 bi = (struct brcmf_bss_info_le *)(cfg->extra_buf + 4);
 err = brcmf_inform_single_bss(cfg, bi);
 if (err)
  goto update_bss_info_out;

 ie = ((u8 *)bi) + le16_to_cpu(bi->ie_offset);
 ie_len = le32_to_cpu(bi->ie_length);

 tim = brcmf_parse_tlvs(ie, ie_len, WLAN_EID_TIM);
 if (!tim) {





  u32 var;
  err = brcmf_fil_iovar_int_get(ifp, "dtim_assoc", &var);
  if (err) {
   bphy_err(drvr, "wl dtim_assoc failed (%d)\n", err);
   goto update_bss_info_out;
  }
 }

update_bss_info_out:
 brcmf_dbg(TRACE, "Exit");
 return err;
}
