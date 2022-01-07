
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcie_service_card {scalar_t__ pci_mmap1; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static int mwifiex_read_reg_byte(struct mwifiex_adapter *adapter,
     int reg, u8 *data)
{
 struct pcie_service_card *card = adapter->card;

 *data = ioread8(card->pci_mmap1 + reg);

 return 0;
}
