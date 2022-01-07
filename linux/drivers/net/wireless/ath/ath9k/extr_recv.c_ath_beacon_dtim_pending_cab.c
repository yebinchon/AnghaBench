
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; int len; } ;
struct ieee80211_tim_ie {scalar_t__ dtim_count; int bitmap_ctrl; } ;
struct TYPE_3__ {int* variable; } ;
struct TYPE_4__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;


 int WLAN_EID_TIM ;

__attribute__((used)) static bool ath_beacon_dtim_pending_cab(struct sk_buff *skb)
{

 struct ieee80211_mgmt *mgmt;
 u8 *pos, *end, id, elen;
 struct ieee80211_tim_ie *tim;

 mgmt = (struct ieee80211_mgmt *)skb->data;
 pos = mgmt->u.beacon.variable;
 end = skb->data + skb->len;

 while (pos + 2 < end) {
  id = *pos++;
  elen = *pos++;
  if (pos + elen > end)
   break;

  if (id == WLAN_EID_TIM) {
   if (elen < sizeof(*tim))
    break;
   tim = (struct ieee80211_tim_ie *) pos;
   if (tim->dtim_count != 0)
    break;
   return tim->bitmap_ctrl & 0x01;
  }

  pos += elen;
 }

 return 0;
}
