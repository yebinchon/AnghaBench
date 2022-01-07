
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int DLLPR ;
 int MISC_1 ;
 int PFM_D3COLD_EN ;
 int PFM_EN ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_hw_aspm_clkreq_enable (struct rtl8169_private*,int) ;
 int rtl_hw_start_8168ep (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168ep_2(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168ep_2[] = {
  { 0x00, 0xffff, 0x10a3 },
  { 0x19, 0xffff, 0xfc00 },
  { 0x1e, 0xffff, 0x20ea }
 };


 rtl_hw_aspm_clkreq_enable(tp, 0);
 rtl_ephy_init(tp, e_info_8168ep_2);

 rtl_hw_start_8168ep(tp);

 RTL_W8(tp, DLLPR, RTL_R8(tp, DLLPR) & ~PFM_EN);
 RTL_W8(tp, MISC_1, RTL_R8(tp, MISC_1) & ~PFM_D3COLD_EN);

 rtl_hw_aspm_clkreq_enable(tp, 1);
}
