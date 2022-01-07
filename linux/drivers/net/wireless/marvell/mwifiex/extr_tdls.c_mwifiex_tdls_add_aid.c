
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mwifiex_private {int assoc_rsp_buf; } ;
struct ieee_types_assoc_rsp {int a_id; } ;


 int WLAN_EID_AID ;
 int memcpy (int *,int *,int) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_aid(struct mwifiex_private *priv,
    struct sk_buff *skb)
{
 struct ieee_types_assoc_rsp *assoc_rsp;
 u8 *pos;

 assoc_rsp = (struct ieee_types_assoc_rsp *)&priv->assoc_rsp_buf;
 pos = skb_put(skb, 4);
 *pos++ = WLAN_EID_AID;
 *pos++ = 2;
 memcpy(pos, &assoc_rsp->a_id, sizeof(assoc_rsp->a_id));

 return;
}
