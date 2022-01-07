
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Config4 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_hw_start_8168bb (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168bef(struct rtl8169_private *tp)
{
 rtl_hw_start_8168bb(tp);

 RTL_W8(tp, Config4, RTL_R8(tp, Config4) & ~(1 << 0));
}
