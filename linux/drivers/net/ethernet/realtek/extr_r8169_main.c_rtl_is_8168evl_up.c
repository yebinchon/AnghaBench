
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; } ;


 scalar_t__ RTL_GIGA_MAC_VER_34 ;
 scalar_t__ RTL_GIGA_MAC_VER_39 ;
 scalar_t__ RTL_GIGA_MAC_VER_51 ;

__attribute__((used)) static bool rtl_is_8168evl_up(struct rtl8169_private *tp)
{
 return tp->mac_version >= RTL_GIGA_MAC_VER_34 &&
        tp->mac_version != RTL_GIGA_MAC_VER_39 &&
        tp->mac_version <= RTL_GIGA_MAC_VER_51;
}
