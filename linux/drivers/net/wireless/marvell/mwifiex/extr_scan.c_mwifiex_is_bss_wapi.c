
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wapi_enabled; } ;
struct mwifiex_private {TYPE_1__ sec_info; } ;
struct mwifiex_bssdescriptor {int bcn_wapi_ie; } ;


 int WLAN_EID_BSS_AC_ACCESS_DELAY ;
 scalar_t__ has_ieee_hdr (int ,int ) ;

__attribute__((used)) static bool
mwifiex_is_bss_wapi(struct mwifiex_private *priv,
      struct mwifiex_bssdescriptor *bss_desc)
{
 if (priv->sec_info.wapi_enabled &&
     has_ieee_hdr(bss_desc->bcn_wapi_ie, WLAN_EID_BSS_AC_ACCESS_DELAY))
  return 1;
 return 0;
}
