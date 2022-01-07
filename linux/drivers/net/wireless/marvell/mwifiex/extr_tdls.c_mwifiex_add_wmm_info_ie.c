
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct ieee_types_header {int dummy; } ;


 scalar_t__ MWIFIEX_TDLS_WMM_INFO_SIZE ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int * skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void
mwifiex_add_wmm_info_ie(struct mwifiex_private *priv, struct sk_buff *skb,
   u8 qosinfo)
{
 u8 *buf;

 buf = skb_put(skb,
        MWIFIEX_TDLS_WMM_INFO_SIZE + sizeof(struct ieee_types_header));

 *buf++ = WLAN_EID_VENDOR_SPECIFIC;
 *buf++ = 7;
 *buf++ = 0x00;
 *buf++ = 0x50;
 *buf++ = 0xf2;
 *buf++ = 2;
 *buf++ = 0;
 *buf++ = 1;
 *buf++ = qosinfo;
}
