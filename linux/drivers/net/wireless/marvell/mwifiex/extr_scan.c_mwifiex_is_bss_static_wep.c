
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wpa2_enabled; int wpa_enabled; scalar_t__ wep_enabled; } ;
struct mwifiex_private {TYPE_1__ sec_info; } ;
struct mwifiex_bssdescriptor {scalar_t__ privacy; } ;



__attribute__((used)) static bool
mwifiex_is_bss_static_wep(struct mwifiex_private *priv,
     struct mwifiex_bssdescriptor *bss_desc)
{
 if (priv->sec_info.wep_enabled && !priv->sec_info.wpa_enabled &&
     !priv->sec_info.wpa2_enabled && bss_desc->privacy) {
  return 1;
 }
 return 0;
}
