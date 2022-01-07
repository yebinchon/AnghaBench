
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int RTL_W32 (struct rtl8169_private*,int,int ) ;
 int rtl_hw_config (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8125(struct rtl8169_private *tp)
{
 int i;


 for (i = 0xa00; i < 0xb00; i += 4)
  RTL_W32(tp, i, 0);

 rtl_hw_config(tp);
}
