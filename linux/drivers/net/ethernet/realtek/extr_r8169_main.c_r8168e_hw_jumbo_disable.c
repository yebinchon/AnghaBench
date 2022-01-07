
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int Config3 ;
 int Config4 ;
 int Jumbo_En0 ;
 int MaxTxPacketSize ;
 int PCI_EXP_DEVCTL_READRQ_4096B ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_tx_performance_tweak (struct rtl8169_private*,int ) ;

__attribute__((used)) static void r8168e_hw_jumbo_disable(struct rtl8169_private *tp)
{
 RTL_W8(tp, MaxTxPacketSize, 0x0c);
 RTL_W8(tp, Config3, RTL_R8(tp, Config3) & ~Jumbo_En0);
 RTL_W8(tp, Config4, RTL_R8(tp, Config4) & ~0x01);
 rtl_tx_performance_tweak(tp, PCI_EXP_DEVCTL_READRQ_4096B);
}
