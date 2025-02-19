
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_4__ {int len; int element_id; } ;
struct ieee_types_extcap {int * ext_capab; TYPE_2__ ieee_hdr; } ;
struct TYPE_3__ {scalar_t__ is_hw_11ac_capable; } ;


 int WLAN_EID_EXT_CAPABILITY ;
 int WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH ;
 int WLAN_EXT_CAPA5_TDLS_ENABLED ;
 int WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED ;
 int memset (int *,int ,int) ;
 struct ieee_types_extcap* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_ext_capab(struct mwifiex_private *priv,
           struct sk_buff *skb)
{
 struct ieee_types_extcap *extcap;

 extcap = skb_put(skb, sizeof(struct ieee_types_extcap));
 extcap->ieee_hdr.element_id = WLAN_EID_EXT_CAPABILITY;
 extcap->ieee_hdr.len = 8;
 memset(extcap->ext_capab, 0, 8);
 extcap->ext_capab[4] |= WLAN_EXT_CAPA5_TDLS_ENABLED;
 extcap->ext_capab[3] |= WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH;

 if (priv->adapter->is_hw_11ac_capable)
  extcap->ext_capab[7] |= WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED;
}
