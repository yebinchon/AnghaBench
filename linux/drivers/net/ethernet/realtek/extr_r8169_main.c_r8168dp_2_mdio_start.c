
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int R8168DP_1_MDIO_ACCESS_BIT ;
 int RTL_R32 (struct rtl8169_private*,int) ;
 int RTL_W32 (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void r8168dp_2_mdio_start(struct rtl8169_private *tp)
{
 RTL_W32(tp, 0xd0, RTL_R32(tp, 0xd0) & ~R8168DP_1_MDIO_ACCESS_BIT);
}
