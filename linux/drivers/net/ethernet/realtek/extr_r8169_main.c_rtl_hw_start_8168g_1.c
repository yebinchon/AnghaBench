
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_hw_aspm_clkreq_enable (struct rtl8169_private*,int) ;
 int rtl_hw_start_8168g (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168g_1(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168g_1[] = {
  { 0x00, 0x0008, 0x0000 },
  { 0x0c, 0x3ff0, 0x0820 },
  { 0x1e, 0x0000, 0x0001 },
  { 0x19, 0x8000, 0x0000 }
 };

 rtl_hw_start_8168g(tp);


 rtl_hw_aspm_clkreq_enable(tp, 0);
 rtl_ephy_init(tp, e_info_8168g_1);
 rtl_hw_aspm_clkreq_enable(tp, 1);
}
