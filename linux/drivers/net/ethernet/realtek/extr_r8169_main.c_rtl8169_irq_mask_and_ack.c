
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int ChipCmd ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int rtl_ack_events (struct rtl8169_private*,int) ;
 int rtl_irq_disable (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_irq_mask_and_ack(struct rtl8169_private *tp)
{
 rtl_irq_disable(tp);
 rtl_ack_events(tp, 0xffffffff);

 RTL_R8(tp, ChipCmd);
}
