
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int ERIAR_MASK_1111 ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int) ;

__attribute__((used)) static void rtl_set_fifo_size(struct rtl8169_private *tp, u16 rx_stat,
         u16 tx_stat, u16 rx_dyn, u16 tx_dyn)
{



 rtl_eri_write(tp, 0xc8, ERIAR_MASK_1111, (rx_stat << 16) | rx_dyn);
 rtl_eri_write(tp, 0xe8, ERIAR_MASK_1111, (tx_stat << 16) | tx_dyn);
}
