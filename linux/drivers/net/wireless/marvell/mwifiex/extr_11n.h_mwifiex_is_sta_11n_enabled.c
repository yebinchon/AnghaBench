
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_sta_node {int is_11n_enabled; } ;
struct mwifiex_private {scalar_t__ bss_role; scalar_t__ bss_mode; TYPE_1__* adapter; int ap_11n_enabled; } ;
struct TYPE_2__ {int adhoc_11n_enabled; } ;


 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;

__attribute__((used)) static inline int mwifiex_is_sta_11n_enabled(struct mwifiex_private *priv,
          struct mwifiex_sta_node *node)
{
 if (!node || ((priv->bss_role == MWIFIEX_BSS_ROLE_UAP) &&
        !priv->ap_11n_enabled) ||
     ((priv->bss_mode == NL80211_IFTYPE_ADHOC) &&
      !priv->adapter->adhoc_11n_enabled))
  return 0;

 return node->is_11n_enabled;
}
