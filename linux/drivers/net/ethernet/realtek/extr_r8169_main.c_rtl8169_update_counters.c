
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {int dummy; } ;


 int ChipCmd ;
 int CmdRxEnb ;
 int CounterDump ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int rtl8169_do_counters (struct rtl8169_private*,int ) ;

__attribute__((used)) static bool rtl8169_update_counters(struct rtl8169_private *tp)
{
 u8 val = RTL_R8(tp, ChipCmd);





 if (!(val & CmdRxEnb) || val == 0xff)
  return 1;

 return rtl8169_do_counters(tp, CounterDump);
}
