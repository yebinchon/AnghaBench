
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int ERIAR_MASK_0011 ;
 int msleep (int) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*) ;

__attribute__((used)) static void rtl8106e_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {
  { 0x1f, 0x0004 },
  { 0x10, 0xc07f },
  { 0x19, 0x7030 },
  { 0x1f, 0x0000 }
 };


 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_writephy(tp, 0x18, 0x0310);
 msleep(100);

 rtl_apply_firmware(tp);

 rtl_eri_write(tp, 0x1b0, ERIAR_MASK_0011, 0x0000);
 rtl_writephy_batch(tp, phy_reg_init);

 rtl_eri_write(tp, 0x1d0, ERIAR_MASK_0011, 0x0000);
}
