
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int DBG_REG ;
 int FIX_NAK_1 ;
 int FIX_NAK_2 ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int __rtl_hw_start_8168cp (struct rtl8169_private*) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168c_1(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168c_1[] = {
  { 0x02, 0x0800, 0x1000 },
  { 0x03, 0, 0x0002 },
  { 0x06, 0x0080, 0x0000 }
 };

 rtl_set_def_aspm_entry_latency(tp);

 RTL_W8(tp, DBG_REG, 0x06 | FIX_NAK_1 | FIX_NAK_2);

 rtl_ephy_init(tp, e_info_8168c_1);

 __rtl_hw_start_8168cp(tp);
}
