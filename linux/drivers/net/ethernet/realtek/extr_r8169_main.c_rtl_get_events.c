
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int IntrStatus ;
 int IntrStatus_8125 ;
 int RTL_R16 (struct rtl8169_private*,int ) ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static u32 rtl_get_events(struct rtl8169_private *tp)
{
 if (rtl_is_8125(tp))
  return RTL_R32(tp, IntrStatus_8125);
 else
  return RTL_R16(tp, IntrStatus);
}
