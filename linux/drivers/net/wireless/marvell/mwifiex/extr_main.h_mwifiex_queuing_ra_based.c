
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {scalar_t__ bss_mode; } ;


 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static inline u8
mwifiex_queuing_ra_based(struct mwifiex_private *priv)
{




 if ((priv->bss_mode == NL80211_IFTYPE_STATION ||
      priv->bss_mode == NL80211_IFTYPE_P2P_CLIENT) &&
     (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_STA))
  return 0;

 return 1;
}
