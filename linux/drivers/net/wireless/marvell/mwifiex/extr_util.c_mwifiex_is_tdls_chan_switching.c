
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_sta_node {int dummy; } ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int fw_cap_info; } ;


 int ISSUPP_TDLS_ENABLED (int ) ;
 int TDLS_CHAN_SWITCHING ;
 struct mwifiex_sta_node* mwifiex_get_tdls_sta_entry (struct mwifiex_private*,int ) ;

u8 mwifiex_is_tdls_chan_switching(struct mwifiex_private *priv)
{
 struct mwifiex_sta_node *sta_ptr;

 if (!priv || !ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info))
  return 0;

 sta_ptr = mwifiex_get_tdls_sta_entry(priv, TDLS_CHAN_SWITCHING);
 if (sta_ptr)
  return 1;

 return 0;
}
