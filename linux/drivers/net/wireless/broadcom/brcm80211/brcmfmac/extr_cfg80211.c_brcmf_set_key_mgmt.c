
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* akm_suites; int cipher_group; int n_akm_suites; } ;
struct cfg80211_connect_params {int ie_len; scalar_t__ ie; TYPE_2__ crypto; int want_1x; } ;
struct brcmf_tlv {scalar_t__ len; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; TYPE_1__* vif; } ;
struct brcmf_cfg80211_profile {scalar_t__ use_fwsup; } ;
typedef int s32 ;
struct TYPE_3__ {struct brcmf_cfg80211_profile profile; } ;


 int BRCMF_FEAT_MFP ;
 scalar_t__ BRCMF_MFP_CAPABLE ;
 scalar_t__ BRCMF_MFP_NONE ;
 scalar_t__ BRCMF_MFP_REQUIRED ;
 scalar_t__ BRCMF_PROFILE_FWSUP_1X ;
 scalar_t__ BRCMF_PROFILE_FWSUP_NONE ;
 int CONN ;
 int EINVAL ;
 int INFO ;
 int RSN_CAP_MFPC_MASK ;
 int RSN_CAP_MFPR_MASK ;
 scalar_t__ TLV_HDR_LEN ;






 int WLAN_EID_RSN ;
 int WPA2_AUTH_1X_SHA256 ;
 int WPA2_AUTH_FT ;
 int WPA2_AUTH_PSK ;
 int WPA2_AUTH_PSK_SHA256 ;
 int WPA2_AUTH_UNSPECIFIED ;
 int WPA_AUTH_PSK ;
 int WPA_AUTH_UNSPECIFIED ;
 int WPA_IE_MIN_OUI_LEN ;
 scalar_t__ WPA_IE_SUITE_COUNT_LEN ;
 scalar_t__ WPA_IE_VERSION_LEN ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 int brcmf_fil_bsscfg_int_get (struct brcmf_if*,char*,int*) ;
 int brcmf_fil_bsscfg_int_set (struct brcmf_if*,char*,int) ;
 struct brcmf_tlv* brcmf_parse_tlvs (int const*,int ,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32
brcmf_set_key_mgmt(struct net_device *ndev, struct cfg80211_connect_params *sme)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
 struct brcmf_pub *drvr = ifp->drvr;
 s32 val;
 s32 err;
 const struct brcmf_tlv *rsn_ie;
 const u8 *ie;
 u32 ie_len;
 u32 offset;
 u16 rsn_cap;
 u32 mfp;
 u16 count;

 profile->use_fwsup = BRCMF_PROFILE_FWSUP_NONE;

 if (!sme->crypto.n_akm_suites)
  return 0;

 err = brcmf_fil_bsscfg_int_get(netdev_priv(ndev), "wpa_auth", &val);
 if (err) {
  bphy_err(drvr, "could not get wpa_auth (%d)\n", err);
  return err;
 }
 if (val & (WPA_AUTH_PSK | WPA_AUTH_UNSPECIFIED)) {
  switch (sme->crypto.akm_suites[0]) {
  case 133:
   val = WPA_AUTH_UNSPECIFIED;
   if (sme->want_1x)
    profile->use_fwsup = BRCMF_PROFILE_FWSUP_1X;
   break;
  case 129:
   val = WPA_AUTH_PSK;
   break;
  default:
   bphy_err(drvr, "invalid cipher group (%d)\n",
     sme->crypto.cipher_group);
   return -EINVAL;
  }
 } else if (val & (WPA2_AUTH_PSK | WPA2_AUTH_UNSPECIFIED)) {
  switch (sme->crypto.akm_suites[0]) {
  case 133:
   val = WPA2_AUTH_UNSPECIFIED;
   if (sme->want_1x)
    profile->use_fwsup = BRCMF_PROFILE_FWSUP_1X;
   break;
  case 132:
   val = WPA2_AUTH_1X_SHA256;
   if (sme->want_1x)
    profile->use_fwsup = BRCMF_PROFILE_FWSUP_1X;
   break;
  case 128:
   val = WPA2_AUTH_PSK_SHA256;
   break;
  case 129:
   val = WPA2_AUTH_PSK;
   break;
  case 131:
   val = WPA2_AUTH_UNSPECIFIED | WPA2_AUTH_FT;
   if (sme->want_1x)
    profile->use_fwsup = BRCMF_PROFILE_FWSUP_1X;
   break;
  case 130:
   val = WPA2_AUTH_PSK | WPA2_AUTH_FT;
   break;
  default:
   bphy_err(drvr, "invalid cipher group (%d)\n",
     sme->crypto.cipher_group);
   return -EINVAL;
  }
 }

 if (profile->use_fwsup == BRCMF_PROFILE_FWSUP_1X)
  brcmf_dbg(INFO, "using 1X offload\n");

 if (!brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MFP))
  goto skip_mfp_config;



 rsn_ie = brcmf_parse_tlvs((const u8 *)sme->ie, sme->ie_len,
      WLAN_EID_RSN);
 if (!rsn_ie)
  goto skip_mfp_config;
 ie = (const u8 *)rsn_ie;
 ie_len = rsn_ie->len + TLV_HDR_LEN;

 offset = TLV_HDR_LEN + WPA_IE_VERSION_LEN + WPA_IE_MIN_OUI_LEN;
 if (offset + WPA_IE_SUITE_COUNT_LEN >= ie_len)
  goto skip_mfp_config;

 count = ie[offset] + (ie[offset + 1] << 8);
 offset += WPA_IE_SUITE_COUNT_LEN + (count * WPA_IE_MIN_OUI_LEN);
 if (offset + WPA_IE_SUITE_COUNT_LEN >= ie_len)
  goto skip_mfp_config;

 count = ie[offset] + (ie[offset + 1] << 8);
 offset += WPA_IE_SUITE_COUNT_LEN + (count * WPA_IE_MIN_OUI_LEN);
 if (offset + WPA_IE_SUITE_COUNT_LEN > ie_len)
  goto skip_mfp_config;

 mfp = BRCMF_MFP_NONE;
 rsn_cap = ie[offset] + (ie[offset + 1] << 8);
 if (rsn_cap & RSN_CAP_MFPR_MASK)
  mfp = BRCMF_MFP_REQUIRED;
 else if (rsn_cap & RSN_CAP_MFPC_MASK)
  mfp = BRCMF_MFP_CAPABLE;
 brcmf_fil_bsscfg_int_set(netdev_priv(ndev), "mfp", mfp);

skip_mfp_config:
 brcmf_dbg(CONN, "setting wpa_auth to %d\n", val);
 err = brcmf_fil_bsscfg_int_set(netdev_priv(ndev), "wpa_auth", val);
 if (err) {
  bphy_err(drvr, "could not set wpa_auth (%d)\n", err);
  return err;
 }

 return err;
}
