
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int BUG_ON (int) ;
 int ERIAR ;
 int ERIAR_WRITE_CMD ;
 int ERIDR ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_eriar_cond ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static void _rtl_eri_write(struct rtl8169_private *tp, int addr, u32 mask,
      u32 val, int type)
{
 BUG_ON((addr & 3) || (mask == 0));
 RTL_W32(tp, ERIDR, val);
 RTL_W32(tp, ERIAR, ERIAR_WRITE_CMD | type | mask | addr);

 rtl_udelay_loop_wait_low(tp, &rtl_eriar_cond, 100, 100);
}
