
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int BIT (int ) ;
 int NPQ ;
 int RTL_W16 (struct rtl8169_private*,int ,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;
 int TxPoll ;
 int TxPoll_8125 ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_doorbell(struct rtl8169_private *tp)
{
 if (rtl_is_8125(tp))
  RTL_W16(tp, TxPoll_8125, BIT(0));
 else
  RTL_W8(tp, TxPoll, NPQ);
}
