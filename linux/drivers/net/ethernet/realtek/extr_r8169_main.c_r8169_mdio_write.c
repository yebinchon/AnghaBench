
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int PHYAR ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_phyar_cond ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void r8169_mdio_write(struct rtl8169_private *tp, int reg, int value)
{
 RTL_W32(tp, PHYAR, 0x80000000 | (reg & 0x1f) << 16 | (value & 0xffff));

 rtl_udelay_loop_wait_low(tp, &rtl_phyar_cond, 25, 20);




 udelay(20);
}
