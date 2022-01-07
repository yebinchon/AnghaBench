
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_2; int member_1; } ;


 int DLLPR ;
 int EN_NDP ;
 int EN_OOB_RESET ;
 int FuncEvent ;
 int MCU ;
 int PFM_EN ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_pcie_state_l2l3_disable (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8105e_1(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8105e_1[] = {
  { 0x07, 0, 0x4000 },
  { 0x19, 0, 0x0200 },
  { 0x19, 0, 0x0020 },
  { 0x1e, 0, 0x2000 },
  { 0x03, 0, 0x0001 },
  { 0x19, 0, 0x0100 },
  { 0x19, 0, 0x0004 },
  { 0x0a, 0, 0x0020 }
 };


 RTL_W32(tp, FuncEvent, RTL_R32(tp, FuncEvent) | 0x002800);


 RTL_W32(tp, FuncEvent, RTL_R32(tp, FuncEvent) & ~0x010000);

 RTL_W8(tp, MCU, RTL_R8(tp, MCU) | EN_NDP | EN_OOB_RESET);
 RTL_W8(tp, DLLPR, RTL_R8(tp, DLLPR) | PFM_EN);

 rtl_ephy_init(tp, e_info_8105e_1);

 rtl_pcie_state_l2l3_disable(tp);
}
