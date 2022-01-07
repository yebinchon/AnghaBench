
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int ChipCmd ;
 int CmdReset ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;
 int rtl_chipcmd_cond ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void rtl_hw_reset(struct rtl8169_private *tp)
{
 RTL_W8(tp, ChipCmd, CmdReset);

 rtl_udelay_loop_wait_low(tp, &rtl_chipcmd_cond, 100, 100);
}
