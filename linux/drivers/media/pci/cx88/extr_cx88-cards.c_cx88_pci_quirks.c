
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int CX88X_DEVCTRL ;
 int CX88X_EN_TBFX ;
 int CX88X_EN_VSFX ;
 int PCIPCI_ALIMAGIK ;
 int PCIPCI_NATOMA ;
 int PCIPCI_TRITON ;
 int PCIPCI_VIAETBF ;
 int PCIPCI_VSFX ;
 int PCI_LATENCY_TIMER ;
 unsigned int UNSET ;
 unsigned int latency ;
 int pci_pci_problems ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned int) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int cx88_pci_quirks(const char *name, struct pci_dev *pci)
{
 unsigned int lat = UNSET;
 u8 ctrl = 0;
 u8 value;


 if (pci_pci_problems & PCIPCI_TRITON) {
  pr_info("quirk: PCIPCI_TRITON -- set TBFX\n");
  ctrl |= CX88X_EN_TBFX;
 }
 if (pci_pci_problems & PCIPCI_NATOMA) {
  pr_info("quirk: PCIPCI_NATOMA -- set TBFX\n");
  ctrl |= CX88X_EN_TBFX;
 }
 if (pci_pci_problems & PCIPCI_VIAETBF) {
  pr_info("quirk: PCIPCI_VIAETBF -- set TBFX\n");
  ctrl |= CX88X_EN_TBFX;
 }
 if (pci_pci_problems & PCIPCI_VSFX) {
  pr_info("quirk: PCIPCI_VSFX -- set VSFX\n");
  ctrl |= CX88X_EN_VSFX;
 }
 if (latency != UNSET)
  lat = latency;


 if (ctrl) {
  pci_read_config_byte(pci, CX88X_DEVCTRL, &value);
  value |= ctrl;
  pci_write_config_byte(pci, CX88X_DEVCTRL, value);
 }
 if (lat != UNSET) {
  pr_info("setting pci latency timer to %d\n", latency);
  pci_write_config_byte(pci, PCI_LATENCY_TIMER, latency);
 }
 return 0;
}
