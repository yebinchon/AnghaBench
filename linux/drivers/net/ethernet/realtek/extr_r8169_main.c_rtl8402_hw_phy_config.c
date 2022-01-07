
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_0011 ;
 int msleep (int) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8402_hw_phy_config(struct rtl8169_private *tp)
{

 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_writephy(tp, 0x18, 0x0310);
 msleep(20);

 rtl_apply_firmware(tp);


 rtl_eri_write(tp, 0x1b0, ERIAR_MASK_0011, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0004);
 rtl_writephy(tp, 0x10, 0x401f);
 rtl_writephy(tp, 0x19, 0x7030);
 rtl_writephy(tp, 0x1f, 0x0000);
}
