
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {scalar_t__ bss_type; int auto_tdls_timer_active; int auto_tdls_timer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ auto_tdls; int fw_cap_info; } ;


 scalar_t__ ISSUPP_TDLS_ENABLED (int ) ;
 scalar_t__ MWIFIEX_BSS_TYPE_STA ;
 int del_timer (int *) ;
 int mwifiex_flush_auto_tdls_list (struct mwifiex_private*) ;

void mwifiex_clean_auto_tdls(struct mwifiex_private *priv)
{
 if (ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
     priv->adapter->auto_tdls &&
     priv->bss_type == MWIFIEX_BSS_TYPE_STA) {
  priv->auto_tdls_timer_active = 0;
  del_timer(&priv->auto_tdls_timer);
  mwifiex_flush_auto_tdls_list(priv);
 }
}
