
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int rtl_readphy (struct rtl8169_private*,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_patchphy(struct rtl8169_private *tp, int reg_addr, int value)
{
 rtl_writephy(tp, reg_addr, rtl_readphy(tp, reg_addr) | value);
}
