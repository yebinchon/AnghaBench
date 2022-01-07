
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; int len; } ;
struct TYPE_3__ {scalar_t__ variable; } ;
struct TYPE_4__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
typedef int mgmt ;



u8 *p54_find_ie(struct sk_buff *skb, u8 ie)
{
 struct ieee80211_mgmt *mgmt = (void *)skb->data;
 u8 *pos, *end;

 if (skb->len <= sizeof(mgmt))
  return ((void*)0);

 pos = (u8 *)mgmt->u.beacon.variable;
 end = skb->data + skb->len;
 while (pos < end) {
  if (pos + 2 + pos[1] > end)
   return ((void*)0);

  if (pos[0] == ie)
   return pos;

  pos += 2 + pos[1];
 }
 return ((void*)0);
}
