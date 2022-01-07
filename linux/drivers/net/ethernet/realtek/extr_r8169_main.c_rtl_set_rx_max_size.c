
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 scalar_t__ R8169_RX_BUF_SIZE ;
 int RTL_W16 (struct rtl8169_private*,int ,scalar_t__) ;
 int RxMaxSize ;

__attribute__((used)) static void rtl_set_rx_max_size(struct rtl8169_private *tp)
{

 RTL_W16(tp, RxMaxSize, R8169_RX_BUF_SIZE + 1);
}
