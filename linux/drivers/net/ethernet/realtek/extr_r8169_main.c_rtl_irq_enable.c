
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int irq_enabled; int irq_mask; } ;


 int IntrMask ;
 int IntrMask_8125 ;
 int RTL_W16 (struct rtl8169_private*,int ,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int ) ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_irq_enable(struct rtl8169_private *tp)
{
 tp->irq_enabled = 1;
 if (rtl_is_8125(tp))
  RTL_W32(tp, IntrMask_8125, tp->irq_mask);
 else
  RTL_W16(tp, IntrMask, tp->irq_mask);
}
