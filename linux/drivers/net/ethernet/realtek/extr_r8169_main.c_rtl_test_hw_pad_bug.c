
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct rtl8169_private {scalar_t__ mac_version; } ;


 scalar_t__ ETH_ZLEN ;
 scalar_t__ RTL_GIGA_MAC_VER_34 ;

__attribute__((used)) static bool rtl_test_hw_pad_bug(struct rtl8169_private *tp, struct sk_buff *skb)
{
 return skb->len < ETH_ZLEN && tp->mac_version == RTL_GIGA_MAC_VER_34;
}
