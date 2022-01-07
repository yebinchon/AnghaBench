
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mwifiex_private {scalar_t__ bss_mode; int bss_num; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int mwifiex_get_unused_bss_num (struct mwifiex_adapter*,size_t) ;

__attribute__((used)) static inline struct mwifiex_private *
mwifiex_get_unused_priv_by_bss_type(struct mwifiex_adapter *adapter,
        u8 bss_type)
{
 u8 i;

 for (i = 0; i < adapter->priv_num; i++)
  if (adapter->priv[i]->bss_mode ==
     NL80211_IFTYPE_UNSPECIFIED) {
   adapter->priv[i]->bss_num =
   mwifiex_get_unused_bss_num(adapter, bss_type);
   break;
  }

 return ((i < adapter->priv_num) ? adapter->priv[i] : ((void*)0));
}
