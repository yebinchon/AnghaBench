
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
typedef enum mic_hw_family { ____Placeholder_mic_hw_family } mic_hw_family ;


 int MIC_FAMILY_UNKNOWN ;
 int MIC_FAMILY_X100 ;
__attribute__((used)) static enum mic_hw_family mic_get_family(struct pci_dev *pdev)
{
 enum mic_hw_family family;

 switch (pdev->device) {
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  family = MIC_FAMILY_X100;
  break;
 default:
  family = MIC_FAMILY_UNKNOWN;
  break;
 }
 return family;
}
