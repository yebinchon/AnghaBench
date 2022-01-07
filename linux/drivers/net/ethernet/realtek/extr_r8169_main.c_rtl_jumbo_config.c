
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int ETH_DATA_LEN ;
 int rtl_hw_jumbo_disable (struct rtl8169_private*) ;
 int rtl_hw_jumbo_enable (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_jumbo_config(struct rtl8169_private *tp, int mtu)
{
 if (mtu > ETH_DATA_LEN)
  rtl_hw_jumbo_enable(tp);
 else
  rtl_hw_jumbo_disable(tp);
}
