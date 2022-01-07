
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_adapter {int pdev; } ;
 int IXGBE_PCIDEVCTRL2_TIMEO_MASK ;
 int PCI_EXP_DEVCTL2 ;
 int pcie_capability_read_word (int ,int ,int*) ;

__attribute__((used)) static unsigned long ixgbe_get_completion_timeout(struct ixgbe_adapter *adapter)
{
 u16 devctl2;

 pcie_capability_read_word(adapter->pdev, PCI_EXP_DEVCTL2, &devctl2);

 switch (devctl2 & IXGBE_PCIDEVCTRL2_TIMEO_MASK) {
 case 134:
 case 130:




 case 132:
  return 2000000ul;
 case 131:
  return 520000ul;
 case 128:
  return 130000ul;
 case 136:
  return 32000ul;
 case 133:
  return 2000ul;
 case 129:
  return 100ul;
 case 135:
  return 32000ul;
 default:
  break;
 }




 return 32000ul;
}
