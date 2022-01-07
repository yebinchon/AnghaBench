
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int EPHYAR ;
 int EPHYAR_DATA_MASK ;
 int EPHYAR_REG_MASK ;
 int EPHYAR_REG_SHIFT ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_ephyar_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static u16 rtl_ephy_read(struct rtl8169_private *tp, int reg_addr)
{
 RTL_W32(tp, EPHYAR, (reg_addr & EPHYAR_REG_MASK) << EPHYAR_REG_SHIFT);

 return rtl_udelay_loop_wait_high(tp, &rtl_ephyar_cond, 10, 100) ?
  RTL_R32(tp, EPHYAR) & EPHYAR_DATA_MASK : ~0;
}
