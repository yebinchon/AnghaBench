
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int DISABLE_LAN_EN ;
 int DLLPR ;
 int EARLY_TALLY_EN ;
 int EN_NDP ;
 int EN_OOB_RESET ;
 int FuncEvent ;
 int MCU ;
 int MISC ;
 int PFM_EN ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_hw_aspm_clkreq_enable (struct rtl8169_private*,int) ;
 int rtl_pcie_state_l2l3_disable (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8106(struct rtl8169_private *tp)
{
 rtl_hw_aspm_clkreq_enable(tp, 0);


 RTL_W32(tp, FuncEvent, RTL_R32(tp, FuncEvent) | 0x002800);

 RTL_W32(tp, MISC, (RTL_R32(tp, MISC) | DISABLE_LAN_EN) & ~EARLY_TALLY_EN);
 RTL_W8(tp, MCU, RTL_R8(tp, MCU) | EN_NDP | EN_OOB_RESET);
 RTL_W8(tp, DLLPR, RTL_R8(tp, DLLPR) & ~PFM_EN);

 rtl_pcie_state_l2l3_disable(tp);
 rtl_hw_aspm_clkreq_enable(tp, 1);
}
