
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;


 char* BE3_NAME ;

 char* BE_NAME ;






 char* OC_NAME ;
 char* OC_NAME_BE ;
 char* OC_NAME_LANCER ;
 char* OC_NAME_SH ;

__attribute__((used)) static inline char *nic_name(struct pci_dev *pdev)
{
 switch (pdev->device) {
 case 133:
  return OC_NAME;
 case 132:
  return OC_NAME_BE;
 case 131:
 case 130:
  return OC_NAME_LANCER;
 case 134:
  return BE3_NAME;
 case 129:
 case 128:
  return OC_NAME_SH;
 default:
  return BE_NAME;
 }
}
