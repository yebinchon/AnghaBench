
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ MAX_BGX_PER_CN81XX ;
 scalar_t__ MAX_BGX_PER_CN83XX ;
 scalar_t__ MAX_BGX_PER_CN88XX ;
 int PCI_SUBSYSTEM_ID ;




 scalar_t__ max_bgx_per_node ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void set_max_bgx_per_node(struct pci_dev *pdev)
{
 u16 sdevid;

 if (max_bgx_per_node)
  return;

 pci_read_config_word(pdev, PCI_SUBSYSTEM_ID, &sdevid);
 switch (sdevid) {
 case 131:
 case 130:
  max_bgx_per_node = MAX_BGX_PER_CN81XX;
  break;
 case 129:
  max_bgx_per_node = MAX_BGX_PER_CN83XX;
  break;
 case 128:
 default:
  max_bgx_per_node = MAX_BGX_PER_CN88XX;
  break;
 }
}
