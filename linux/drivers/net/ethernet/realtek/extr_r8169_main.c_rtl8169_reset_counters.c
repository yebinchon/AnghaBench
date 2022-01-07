
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; } ;


 int CounterReset ;
 scalar_t__ RTL_GIGA_MAC_VER_19 ;
 int rtl8169_do_counters (struct rtl8169_private*,int ) ;

__attribute__((used)) static bool rtl8169_reset_counters(struct rtl8169_private *tp)
{




 if (tp->mac_version < RTL_GIGA_MAC_VER_19)
  return 1;

 return rtl8169_do_counters(tp, CounterReset);
}
