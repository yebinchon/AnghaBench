
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int IBCR0 ;
 int IBCR2 ;
 int IBISR0 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_msleep_loop_wait_high (struct rtl8169_private*,int *,int,int) ;
 int rtl_ocp_tx_cond ;

__attribute__((used)) static void rtl8168ep_stop_cmac(struct rtl8169_private *tp)
{
 RTL_W8(tp, IBCR2, RTL_R8(tp, IBCR2) & ~0x01);
 rtl_msleep_loop_wait_high(tp, &rtl_ocp_tx_cond, 50, 2000);
 RTL_W8(tp, IBISR0, RTL_R8(tp, IBISR0) | 0x20);
 RTL_W8(tp, IBCR0, RTL_R8(tp, IBCR0) & ~0x01);
}
