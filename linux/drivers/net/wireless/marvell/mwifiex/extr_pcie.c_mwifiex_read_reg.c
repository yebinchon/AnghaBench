
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_service_card {scalar_t__ pci_mmap1; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static int mwifiex_read_reg(struct mwifiex_adapter *adapter, int reg, u32 *data)
{
 struct pcie_service_card *card = adapter->card;

 *data = ioread32(card->pci_mmap1 + reg);
 if (*data == 0xffffffff)
  return 0xffffffff;

 return 0;
}
