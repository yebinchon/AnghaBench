
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encryption_mode; int wpa2_enabled; int wpa_enabled; int wep_enabled; } ;
struct mwifiex_private {TYPE_1__ sec_info; } ;
struct mwifiex_bssdescriptor {scalar_t__ privacy; int bcn_rsn_ie; int bcn_wpa_ie; } ;


 int INFO ;
 int WLAN_EID_RSN ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int dbg_security_flags (int ,char*,struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 int has_ieee_hdr (int ,int ) ;
 int has_vendor_hdr (int ,int ) ;

__attribute__((used)) static bool
mwifiex_is_bss_dynamic_wep(struct mwifiex_private *priv,
      struct mwifiex_bssdescriptor *bss_desc)
{
 if (!priv->sec_info.wep_enabled && !priv->sec_info.wpa_enabled &&
     !priv->sec_info.wpa2_enabled &&
     !has_vendor_hdr(bss_desc->bcn_wpa_ie, WLAN_EID_VENDOR_SPECIFIC) &&
     !has_ieee_hdr(bss_desc->bcn_rsn_ie, WLAN_EID_RSN) &&
     priv->sec_info.encryption_mode && bss_desc->privacy) {
  dbg_security_flags(INFO, "dynamic", priv, bss_desc);
  return 1;
 }
 return 0;
}
