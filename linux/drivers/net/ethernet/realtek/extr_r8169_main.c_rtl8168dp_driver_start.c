
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int OOB_CMD_DRIVER_START ;
 int r8168dp_oob_notify (struct rtl8169_private*,int ) ;
 int rtl_dp_ocp_read_cond ;
 int rtl_msleep_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void rtl8168dp_driver_start(struct rtl8169_private *tp)
{
 r8168dp_oob_notify(tp, OOB_CMD_DRIVER_START);
 rtl_msleep_loop_wait_high(tp, &rtl_dp_ocp_read_cond, 10, 10);
}
