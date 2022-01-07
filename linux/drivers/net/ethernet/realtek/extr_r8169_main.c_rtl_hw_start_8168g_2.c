
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int ASPM_en ;
 int ClkReqEn ;
 int Config2 ;
 int Config5 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*) ;
 int rtl_hw_start_8168g (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168g_2(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168g_2[] = {
  { 0x00, 0x0008, 0x0000 },
  { 0x0c, 0x3ff0, 0x0820 },
  { 0x19, 0xffff, 0x7c00 },
  { 0x1e, 0xffff, 0x20eb },
  { 0x0d, 0xffff, 0x1666 },
  { 0x00, 0xffff, 0x10a3 },
  { 0x06, 0xffff, 0xf050 },
  { 0x04, 0x0000, 0x0010 },
  { 0x1d, 0x4000, 0x0000 },
 };

 rtl_hw_start_8168g(tp);


 RTL_W8(tp, Config2, RTL_R8(tp, Config2) & ~ClkReqEn);
 RTL_W8(tp, Config5, RTL_R8(tp, Config5) & ~ASPM_en);
 rtl_ephy_init(tp, e_info_8168g_2);
}
