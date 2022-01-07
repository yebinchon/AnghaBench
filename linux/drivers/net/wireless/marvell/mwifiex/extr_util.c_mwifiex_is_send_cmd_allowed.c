
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int fw_cap_info; } ;


 int ISSUPP_TDLS_ENABLED (int ) ;
 scalar_t__ mwifiex_is_tdls_chan_switching (struct mwifiex_private*) ;
 scalar_t__ mwifiex_is_tdls_off_chan (struct mwifiex_private*) ;

u8 mwifiex_is_send_cmd_allowed(struct mwifiex_private *priv)
{
 if (!priv || !ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info))
  return 1;

 if (mwifiex_is_tdls_chan_switching(priv) ||
     mwifiex_is_tdls_off_chan(priv))
  return 0;

 return 1;
}
