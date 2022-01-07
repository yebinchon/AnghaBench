
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int wapi_enabled; } ;
struct mwifiex_private {scalar_t__* wapi_ie; int wapi_ie_len; TYPE_1__ sec_info; int adapter; } ;


 int CMD ;
 int ERROR ;
 int INFO ;
 scalar_t__ WLAN_EID_BSS_AC_ACCESS_DELAY ;
 int memcpy (scalar_t__*,int *,int) ;
 int memset (scalar_t__*,int ,int) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

__attribute__((used)) static int mwifiex_set_wapi_ie(struct mwifiex_private *priv,
          u8 *ie_data_ptr, u16 ie_len)
{
 if (ie_len) {
  if (ie_len > sizeof(priv->wapi_ie)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "info: failed to copy WAPI IE, too big\n");
   return -1;
  }
  memcpy(priv->wapi_ie, ie_data_ptr, ie_len);
  priv->wapi_ie_len = ie_len;
  mwifiex_dbg(priv->adapter, CMD,
       "cmd: Set wapi_ie_len=%d IE=%#x\n",
       priv->wapi_ie_len, priv->wapi_ie[0]);

  if (priv->wapi_ie[0] == WLAN_EID_BSS_AC_ACCESS_DELAY)
   priv->sec_info.wapi_enabled = 1;
 } else {
  memset(priv->wapi_ie, 0, sizeof(priv->wapi_ie));
  priv->wapi_ie_len = ie_len;
  mwifiex_dbg(priv->adapter, INFO,
       "info: Reset wapi_ie_len=%d IE=%#x\n",
       priv->wapi_ie_len, priv->wapi_ie[0]);
  priv->sec_info.wapi_enabled = 0;
 }
 return 0;
}
