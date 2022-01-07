
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Beacon_en ;
 int Config1 ;
 int Config3 ;
 int IOMAP ;
 int MEMMAP ;
 int PCI_EXP_DEVCTL_READRQ_4096B ;
 int PMEnable ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int VPD ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl_hw_start_8102e_2(struct rtl8169_private *tp)
{
 rtl_set_def_aspm_entry_latency(tp);

 rtl_tx_performance_tweak(tp, PCI_EXP_DEVCTL_READRQ_4096B);

 RTL_W8(tp, Config1, MEMMAP | IOMAP | VPD | PMEnable);
 RTL_W8(tp, Config3, RTL_R8(tp, Config3) & ~Beacon_en);
}
