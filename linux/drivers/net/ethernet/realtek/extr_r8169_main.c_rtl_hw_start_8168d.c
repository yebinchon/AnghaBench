
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_DATA_LEN ;
 int PCI_EXP_DEVCTL_READRQ_4096B ;
 int rtl_disable_clock_request (struct rtl8169_private*) ;
 int rtl_set_def_aspm_entry_latency (struct rtl8169_private*) ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl_hw_start_8168d(struct rtl8169_private *tp)
{
 rtl_set_def_aspm_entry_latency(tp);

 rtl_disable_clock_request(tp);

 if (tp->dev->mtu <= ETH_DATA_LEN)
  rtl_tx_performance_tweak(tp, PCI_EXP_DEVCTL_READRQ_4096B);
}
