
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int irq_mask; scalar_t__ mac_version; } ;


 int LinkChg ;
 int RTL_EVENT_NAPI ;
 scalar_t__ RTL_GIGA_MAC_VER_06 ;
 scalar_t__ RTL_GIGA_MAC_VER_11 ;
 int RxFIFOOver ;
 int RxOverflow ;
 int SYSErr ;

__attribute__((used)) static void rtl_set_irq_mask(struct rtl8169_private *tp)
{
 tp->irq_mask = RTL_EVENT_NAPI | LinkChg;

 if (tp->mac_version <= RTL_GIGA_MAC_VER_06)
  tp->irq_mask |= SYSErr | RxOverflow | RxFIFOOver;
 else if (tp->mac_version == RTL_GIGA_MAC_VER_11)

  tp->irq_mask |= RxFIFOOver;
 else
  tp->irq_mask |= RxOverflow;
}
