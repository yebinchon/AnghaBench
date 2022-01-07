
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mac_version; int pci_dev; } ;


 int ChipCmd ;
 int CmdRxEnb ;



 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;
 int pci_clear_master (int ) ;

__attribute__((used)) static void rtl_wol_shutdown_quirk(struct rtl8169_private *tp)
{

 switch (tp->mac_version) {
 case 130:
 case 129:
 case 128:
  pci_clear_master(tp->pci_dev);

  RTL_W8(tp, ChipCmd, CmdRxEnb);

  RTL_R8(tp, ChipCmd);
  break;
 default:
  break;
 }
}
