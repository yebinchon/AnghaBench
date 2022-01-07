
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int phydev; } ;


 int BIT (int) ;
 int phy_modify_paged (int ,int,int,int,int) ;
 int rtl8168g_disable_aldps (struct rtl8169_private*) ;
 int rtl8168h_config_eee_phy (struct rtl8169_private*) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_enable_eee (struct rtl8169_private*) ;
 int rtl_readphy (struct rtl8169_private*,int) ;
 int rtl_w0w1_phy (struct rtl8169_private*,int,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8168h_1_hw_phy_config(struct rtl8169_private *tp)
{
 u16 dout_tapbin;
 u32 data;

 rtl_apply_firmware(tp);


 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x809b);
 rtl_w0w1_phy(tp, 0x14, 0x8000, 0xf800);
 rtl_writephy(tp, 0x13, 0x80a2);
 rtl_w0w1_phy(tp, 0x14, 0x8000, 0xff00);
 rtl_writephy(tp, 0x13, 0x80a4);
 rtl_w0w1_phy(tp, 0x14, 0x8500, 0xff00);
 rtl_writephy(tp, 0x13, 0x809c);
 rtl_w0w1_phy(tp, 0x14, 0xbd00, 0xff00);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x80ad);
 rtl_w0w1_phy(tp, 0x14, 0x7000, 0xf800);
 rtl_writephy(tp, 0x13, 0x80b4);
 rtl_w0w1_phy(tp, 0x14, 0x5000, 0xff00);
 rtl_writephy(tp, 0x13, 0x80ac);
 rtl_w0w1_phy(tp, 0x14, 0x4000, 0xff00);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x808e);
 rtl_w0w1_phy(tp, 0x14, 0x1200, 0xff00);
 rtl_writephy(tp, 0x13, 0x8090);
 rtl_w0w1_phy(tp, 0x14, 0xe500, 0xff00);
 rtl_writephy(tp, 0x13, 0x8092);
 rtl_w0w1_phy(tp, 0x14, 0x9f00, 0xff00);
 rtl_writephy(tp, 0x1f, 0x0000);


 dout_tapbin = 0;
 rtl_writephy(tp, 0x1f, 0x0a46);
 data = rtl_readphy(tp, 0x13);
 data &= 3;
 data <<= 2;
 dout_tapbin |= data;
 data = rtl_readphy(tp, 0x12);
 data &= 0xc000;
 data >>= 14;
 dout_tapbin |= data;
 dout_tapbin = ~(dout_tapbin^0x08);
 dout_tapbin <<= 12;
 dout_tapbin &= 0xf000;
 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x827a);
 rtl_w0w1_phy(tp, 0x14, dout_tapbin, 0xf000);
 rtl_writephy(tp, 0x13, 0x827b);
 rtl_w0w1_phy(tp, 0x14, dout_tapbin, 0xf000);
 rtl_writephy(tp, 0x13, 0x827c);
 rtl_w0w1_phy(tp, 0x14, dout_tapbin, 0xf000);
 rtl_writephy(tp, 0x13, 0x827d);
 rtl_w0w1_phy(tp, 0x14, dout_tapbin, 0xf000);

 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x0811);
 rtl_w0w1_phy(tp, 0x14, 0x0800, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0a42);
 rtl_w0w1_phy(tp, 0x16, 0x0002, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 phy_modify_paged(tp->phydev, 0x0a44, 0x11, 0, BIT(11));


 phy_modify_paged(tp->phydev, 0x0bca, 0x17, BIT(12) | BIT(13), BIT(14));

 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x803f);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x8047);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x804f);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x8057);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x805f);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x8067);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x13, 0x806f);
 rtl_w0w1_phy(tp, 0x14, 0x0000, 0x3000);
 rtl_writephy(tp, 0x1f, 0x0000);


 phy_modify_paged(tp->phydev, 0x0a44, 0x11, BIT(7), 0);

 rtl8168g_disable_aldps(tp);
 rtl8168h_config_eee_phy(tp);
 rtl_enable_eee(tp);
}
