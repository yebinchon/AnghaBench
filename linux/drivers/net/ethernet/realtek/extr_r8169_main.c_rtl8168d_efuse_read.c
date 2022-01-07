
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {int dummy; } ;


 int EFUSEAR ;
 int EFUSEAR_DATA_MASK ;
 int EFUSEAR_REG_MASK ;
 int EFUSEAR_REG_SHIFT ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_efusear_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static u8 rtl8168d_efuse_read(struct rtl8169_private *tp, int reg_addr)
{
 RTL_W32(tp, EFUSEAR, (reg_addr & EFUSEAR_REG_MASK) << EFUSEAR_REG_SHIFT);

 return rtl_udelay_loop_wait_high(tp, &rtl_efusear_cond, 100, 300) ?
  RTL_R32(tp, EFUSEAR) & EFUSEAR_DATA_MASK : ~0;
}
