
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int IntrStatus ;
 int IntrStatus_8125 ;
 int RTL_W16 (struct rtl8169_private*,int ,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int ) ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_ack_events(struct rtl8169_private *tp, u32 bits)
{
 if (rtl_is_8125(tp))
  RTL_W32(tp, IntrStatus_8125, bits);
 else
  RTL_W16(tp, IntrStatus, bits);
}
