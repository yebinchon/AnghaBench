
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int BIT (int) ;
 int Config5 ;
 int DLLPR ;
 int ERIAR_MASK_0001 ;
 int ERIAR_MASK_0011 ;
 int ERIAR_MASK_1111 ;
 int MCU ;
 int MISC ;
 int NOW_IS_OOB ;
 int PCI_EXP_DEVCTL_READRQ_4096B ;
 int PFM_EN ;
 int PWM_EN ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int Spi_en ;
 int rtl8168_config_eee_mac (struct rtl8169_private*) ;
 int rtl_disable_clock_request (struct rtl8169_private*) ;
 int rtl_eri_set_bits (struct rtl8169_private*,int,int ,int ) ;
 int rtl_eri_write (struct rtl8169_private*,int,int ,int) ;
 int rtl_reset_packet_filter (struct rtl8169_private*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;
 int rtl_set_fifo_size (struct rtl8169_private*,int,int,int,int) ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl_hw_start_8168f(struct rtl8169_private *tp)
{
 rtl_set_def_aspm_entry_latency(tp);

 rtl_tx_performance_tweak(tp, PCI_EXP_DEVCTL_READRQ_4096B);

 rtl_eri_write(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
 rtl_eri_write(tp, 0xb8, ERIAR_MASK_0011, 0x0000);
 rtl_set_fifo_size(tp, 0x10, 0x10, 0x02, 0x06);
 rtl_reset_packet_filter(tp);
 rtl_eri_set_bits(tp, 0x1b0, ERIAR_MASK_0001, BIT(4));
 rtl_eri_set_bits(tp, 0x1d0, ERIAR_MASK_0001, BIT(4));
 rtl_eri_write(tp, 0xcc, ERIAR_MASK_1111, 0x00000050);
 rtl_eri_write(tp, 0xd0, ERIAR_MASK_1111, 0x00000060);

 rtl_disable_clock_request(tp);

 RTL_W8(tp, MCU, RTL_R8(tp, MCU) & ~NOW_IS_OOB);
 RTL_W8(tp, DLLPR, RTL_R8(tp, DLLPR) | PFM_EN);
 RTL_W32(tp, MISC, RTL_R32(tp, MISC) | PWM_EN);
 RTL_W8(tp, Config5, RTL_R8(tp, Config5) & ~Spi_en);

 rtl8168_config_eee_mac(tp);
}
