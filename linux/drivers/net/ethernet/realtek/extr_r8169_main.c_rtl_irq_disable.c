
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ irq_enabled; } ;


 int IntrMask ;
 int IntrMask_8125 ;
 int RTL_W16 (struct rtl8169_private*,int ,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int ) ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_irq_disable(struct rtl8169_private *tp)
{
 if (rtl_is_8125(tp))
  RTL_W32(tp, IntrMask_8125, 0);
 else
  RTL_W16(tp, IntrMask, 0);
 tp->irq_enabled = 0;
}
