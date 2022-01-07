
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int rtl_patchphy (struct rtl8169_private*,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*) ;

__attribute__((used)) static void rtl8168cp_2_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {
  { 0x1f, 0x0001 },
  { 0x1d, 0x3d98 },
  { 0x1f, 0x0000 }
 };

 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_patchphy(tp, 0x14, 1 << 5);
 rtl_patchphy(tp, 0x0d, 1 << 5);

 rtl_writephy_batch(tp, phy_reg_init);
}
