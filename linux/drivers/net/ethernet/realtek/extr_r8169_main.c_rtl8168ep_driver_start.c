
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int OOB_CMD_DRIVER_START ;
 int r8168ep_ocp_read (struct rtl8169_private*,int,int) ;
 int r8168ep_ocp_write (struct rtl8169_private*,int,int,int) ;
 int rtl_ep_ocp_read_cond ;
 int rtl_msleep_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void rtl8168ep_driver_start(struct rtl8169_private *tp)
{
 r8168ep_ocp_write(tp, 0x01, 0x180, OOB_CMD_DRIVER_START);
 r8168ep_ocp_write(tp, 0x01, 0x30,
     r8168ep_ocp_read(tp, 0x01, 0x30) | 0x01);
 rtl_msleep_loop_wait_high(tp, &rtl_ep_ocp_read_cond, 10, 10);
}
