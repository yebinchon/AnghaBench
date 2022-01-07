
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* dev; } ;
struct phy_reg {int member_0; int member_1; } ;
struct TYPE_2__ {int dev_addr; } ;


 int rtl8168f_config_eee_phy (struct rtl8169_private*) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_enable_eee (struct rtl8169_private*) ;
 int rtl_rar_exgmac_set (struct rtl8169_private*,int ) ;
 int rtl_w0w1_phy (struct rtl8169_private*,int,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*) ;

__attribute__((used)) static void rtl8168e_2_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {

  { 0x1f, 0x0004 },
  { 0x1f, 0x0007 },
  { 0x1e, 0x00ac },
  { 0x18, 0x0006 },
  { 0x1f, 0x0002 },
  { 0x1f, 0x0000 },
  { 0x1f, 0x0000 },


  { 0x1f, 0x0003 },
  { 0x09, 0xa20f },
  { 0x1f, 0x0000 },
  { 0x1f, 0x0000 },


  { 0x1f, 0x0005 },
  { 0x05, 0x8b5b },
  { 0x06, 0x9222 },
  { 0x05, 0x8b6d },
  { 0x06, 0x8000 },
  { 0x05, 0x8b76 },
  { 0x06, 0x8000 },
  { 0x1f, 0x0000 }
 };

 rtl_apply_firmware(tp);

 rtl_writephy_batch(tp, phy_reg_init);


 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b80);
 rtl_w0w1_phy(tp, 0x17, 0x0006, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0004);
 rtl_writephy(tp, 0x1f, 0x0007);
 rtl_writephy(tp, 0x1e, 0x002d);
 rtl_w0w1_phy(tp, 0x18, 0x0010, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0002);
 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_w0w1_phy(tp, 0x14, 0x8000, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b86);
 rtl_w0w1_phy(tp, 0x06, 0x0001, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b85);
 rtl_w0w1_phy(tp, 0x06, 0x4000, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);

 rtl8168f_config_eee_phy(tp);
 rtl_enable_eee(tp);


 rtl_writephy(tp, 0x1f, 0x0003);
 rtl_w0w1_phy(tp, 0x19, 0x0001, 0x0000);
 rtl_w0w1_phy(tp, 0x10, 0x0400, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_w0w1_phy(tp, 0x01, 0x0100, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_rar_exgmac_set(tp, tp->dev->dev_addr);
}
