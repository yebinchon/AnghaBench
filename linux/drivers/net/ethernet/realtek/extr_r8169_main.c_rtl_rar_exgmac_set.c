
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_1111 ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int const) ;

__attribute__((used)) static void rtl_rar_exgmac_set(struct rtl8169_private *tp, u8 *addr)
{
 const u16 w[] = {
  addr[0] | (addr[1] << 8),
  addr[2] | (addr[3] << 8),
  addr[4] | (addr[5] << 8)
 };

 rtl_eri_write(tp, 0xe0, ERIAR_MASK_1111, w[0] | (w[1] << 16));
 rtl_eri_write(tp, 0xe4, ERIAR_MASK_1111, w[2]);
 rtl_eri_write(tp, 0xf0, ERIAR_MASK_1111, w[0] << 16);
 rtl_eri_write(tp, 0xf4, ERIAR_MASK_1111, w[1] | (w[2] << 16));
}
