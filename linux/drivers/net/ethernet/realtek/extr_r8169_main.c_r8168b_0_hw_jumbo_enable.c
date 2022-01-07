
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int PCI_EXP_DEVCTL_NOSNOOP_EN ;
 int PCI_EXP_DEVCTL_READRQ_512B ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int) ;

__attribute__((used)) static void r8168b_0_hw_jumbo_enable(struct rtl8169_private *tp)
{
 rtl_tx_performance_tweak(tp,
  PCI_EXP_DEVCTL_READRQ_512B | PCI_EXP_DEVCTL_NOSNOOP_EN);
}
