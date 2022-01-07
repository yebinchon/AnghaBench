
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR ;
 int ERIAR_MASK_1111 ;
 int ERIAR_READ_CMD ;
 int ERIDR ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_eriar_cond ;
 scalar_t__ rtl_udelay_loop_wait_high (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static u32 _rtl_eri_read(struct rtl8169_private *tp, int addr, int type)
{
 RTL_W32(tp, ERIAR, ERIAR_READ_CMD | type | ERIAR_MASK_1111 | addr);

 return rtl_udelay_loop_wait_high(tp, &rtl_eriar_cond, 100, 100) ?
  RTL_R32(tp, ERIDR) : ~0;
}
