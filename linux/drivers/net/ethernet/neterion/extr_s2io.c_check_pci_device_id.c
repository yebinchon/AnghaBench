
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PCI_ANY_ID ;




 int XFRAME_II_DEVICE ;
 int XFRAME_I_DEVICE ;

__attribute__((used)) static u16 check_pci_device_id(u16 id)
{
 switch (id) {
 case 130:
 case 131:
  return XFRAME_II_DEVICE;
 case 129:
 case 128:
  return XFRAME_I_DEVICE;
 default:
  return PCI_ANY_ID;
 }
}
