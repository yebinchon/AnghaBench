
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Config3 ;
 int Jumbo_En0 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;

__attribute__((used)) static void r8168dp_hw_jumbo_disable(struct rtl8169_private *tp)
{
 RTL_W8(tp, Config3, RTL_R8(tp, Config3) & ~Jumbo_En0);
}
