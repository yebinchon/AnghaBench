
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_vendor_radiotap {int subns; int len; int align; int pad; scalar_t__ data; int present; void** oui; } ;
struct TYPE_2__ {int flag; } ;


 int BIT (int ) ;
 void** HWSIM_RADIOTAP_OUI ;
 TYPE_1__* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_RADIOTAP_VENDOR_DATA ;
 int memcpy (scalar_t__,char*,int) ;
 int memset (scalar_t__,int ,int) ;
 struct ieee80211_vendor_radiotap* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void mac80211_hwsim_add_vendor_rtap(struct sk_buff *skb)
{
}
