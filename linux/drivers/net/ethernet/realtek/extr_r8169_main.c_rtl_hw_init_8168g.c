
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int ocp_base; } ;


 int BIT (int) ;
 int ChipCmd ;
 int CmdRxEnb ;
 int CmdTxEnb ;
 int MCU ;
 int MISC ;
 int NOW_IS_OOB ;
 int OCP_STD_PHY_BASE ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int RXDV_GATED_EN ;
 int msleep (int) ;
 int r8168_mac_ocp_modify (struct rtl8169_private*,int,int ,int ) ;
 int rtl_link_list_ready_cond ;
 int rtl_rxtx_empty_cond ;
 int rtl_txcfg_empty_cond ;
 int rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void rtl_hw_init_8168g(struct rtl8169_private *tp)
{
 tp->ocp_base = OCP_STD_PHY_BASE;

 RTL_W32(tp, MISC, RTL_R32(tp, MISC) | RXDV_GATED_EN);

 if (!rtl_udelay_loop_wait_high(tp, &rtl_txcfg_empty_cond, 100, 42))
  return;

 if (!rtl_udelay_loop_wait_high(tp, &rtl_rxtx_empty_cond, 100, 42))
  return;

 RTL_W8(tp, ChipCmd, RTL_R8(tp, ChipCmd) & ~(CmdTxEnb | CmdRxEnb));
 msleep(1);
 RTL_W8(tp, MCU, RTL_R8(tp, MCU) & ~NOW_IS_OOB);

 r8168_mac_ocp_modify(tp, 0xe8de, BIT(14), 0);

 if (!rtl_udelay_loop_wait_high(tp, &rtl_link_list_ready_cond, 100, 42))
  return;

 r8168_mac_ocp_modify(tp, 0xe8de, 0, BIT(15));

 rtl_udelay_loop_wait_high(tp, &rtl_link_list_ready_cond, 100, 42);
}
