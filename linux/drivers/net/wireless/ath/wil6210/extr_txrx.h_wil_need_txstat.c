
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ sk; } ;
struct TYPE_2__ {int tx_flags; } ;


 int SKBTX_WIFI_STATUS ;
 scalar_t__ is_unicast_ether_addr (int const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int * wil_skb_get_da (struct sk_buff*) ;

__attribute__((used)) static inline bool wil_need_txstat(struct sk_buff *skb)
{
 const u8 *da = wil_skb_get_da(skb);

 return is_unicast_ether_addr(da) && skb->sk &&
        (skb_shinfo(skb)->tx_flags & SKBTX_WIFI_STATUS);
}
