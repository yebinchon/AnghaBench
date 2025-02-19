
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_w0w1_phy (struct rtl8169_private*,int,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*) ;

__attribute__((used)) static void rtl8168e_1_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {

  { 0x1f, 0x0005 },
  { 0x05, 0x8b80 },
  { 0x06, 0xc896 },
  { 0x1f, 0x0000 },


  { 0x1f, 0x0001 },
  { 0x0b, 0x6c20 },
  { 0x07, 0x2872 },
  { 0x1c, 0xefff },
  { 0x1f, 0x0003 },
  { 0x14, 0x6420 },
  { 0x1f, 0x0000 },


  { 0x1f, 0x0007 },
  { 0x1e, 0x002f },
  { 0x15, 0x1919 },
  { 0x1f, 0x0000 },

  { 0x1f, 0x0007 },
  { 0x1e, 0x00ac },
  { 0x18, 0x0006 },
  { 0x1f, 0x0000 }
 };

 rtl_apply_firmware(tp);

 rtl_writephy_batch(tp, phy_reg_init);


 rtl_writephy(tp, 0x1f, 0x0007);
 rtl_writephy(tp, 0x1e, 0x0023);
 rtl_w0w1_phy(tp, 0x17, 0x0006, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0002);
 rtl_w0w1_phy(tp, 0x08, 0x8000, 0x7f00);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0007);
 rtl_writephy(tp, 0x1e, 0x002d);
 rtl_w0w1_phy(tp, 0x18, 0x0050, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_w0w1_phy(tp, 0x14, 0x8000, 0x0000);

 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b86);
 rtl_w0w1_phy(tp, 0x06, 0x0001, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);

 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b85);
 rtl_w0w1_phy(tp, 0x06, 0x0000, 0x2000);
 rtl_writephy(tp, 0x1f, 0x0007);
 rtl_writephy(tp, 0x1e, 0x0020);
 rtl_w0w1_phy(tp, 0x15, 0x0000, 0x1100);
 rtl_writephy(tp, 0x1f, 0x0006);
 rtl_writephy(tp, 0x00, 0x5a00);
 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_writephy(tp, 0x0d, 0x0007);
 rtl_writephy(tp, 0x0e, 0x003c);
 rtl_writephy(tp, 0x0d, 0x4007);
 rtl_writephy(tp, 0x0e, 0x0000);
 rtl_writephy(tp, 0x0d, 0x0000);
}
