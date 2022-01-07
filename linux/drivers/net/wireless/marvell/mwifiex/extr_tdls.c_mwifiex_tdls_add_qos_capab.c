
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int MWIFIEX_TDLS_DEF_QOS_CAPAB ;
 int WLAN_EID_QOS_CAPA ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_qos_capab(struct sk_buff *skb)
{
 u8 *pos = skb_put(skb, 3);

 *pos++ = WLAN_EID_QOS_CAPA;
 *pos++ = 1;
 *pos++ = MWIFIEX_TDLS_DEF_QOS_CAPAB;
}
