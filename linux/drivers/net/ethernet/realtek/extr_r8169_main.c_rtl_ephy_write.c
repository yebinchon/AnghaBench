
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int EPHYAR ;
 int EPHYAR_DATA_MASK ;
 int EPHYAR_REG_MASK ;
 int EPHYAR_REG_SHIFT ;
 int EPHYAR_WRITE_CMD ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_ephyar_cond ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl_ephy_write(struct rtl8169_private *tp, int reg_addr, int value)
{
 RTL_W32(tp, EPHYAR, EPHYAR_WRITE_CMD | (value & EPHYAR_DATA_MASK) |
  (reg_addr & EPHYAR_REG_MASK) << EPHYAR_REG_SHIFT);

 rtl_udelay_loop_wait_low(tp, &rtl_ephyar_cond, 10, 100);

 udelay(10);
}
