
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int ETIMEDOUT ;
 int PHYAR ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_phyar_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int r8169_mdio_read(struct rtl8169_private *tp, int reg)
{
 int value;

 RTL_W32(tp, PHYAR, 0x0 | (reg & 0x1f) << 16);

 value = rtl_udelay_loop_wait_high(tp, &rtl_phyar_cond, 25, 20) ?
  RTL_R32(tp, PHYAR) & 0xffff : -ETIMEDOUT;





 udelay(20);

 return value;
}
