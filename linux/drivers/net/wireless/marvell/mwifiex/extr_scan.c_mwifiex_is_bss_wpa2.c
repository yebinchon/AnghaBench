
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wpa2_enabled; int wpa_enabled; int wep_enabled; } ;
struct mwifiex_private {TYPE_1__ sec_info; } ;
struct mwifiex_bssdescriptor {int bcn_rsn_ie; } ;


 int INFO ;
 int WLAN_EID_RSN ;
 int dbg_security_flags (int ,char*,struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 scalar_t__ has_ieee_hdr (int ,int ) ;

__attribute__((used)) static bool
mwifiex_is_bss_wpa2(struct mwifiex_private *priv,
      struct mwifiex_bssdescriptor *bss_desc)
{
 if (!priv->sec_info.wep_enabled && !priv->sec_info.wpa_enabled &&
     priv->sec_info.wpa2_enabled &&
     has_ieee_hdr(bss_desc->bcn_rsn_ie, WLAN_EID_RSN)) {




  dbg_security_flags(INFO, "WAP2", priv, bss_desc);
  return 1;
 }
 return 0;
}
