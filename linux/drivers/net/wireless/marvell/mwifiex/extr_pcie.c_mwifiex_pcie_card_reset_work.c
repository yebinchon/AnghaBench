
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_service_card {int dev; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int pci_try_reset_function (int ) ;

__attribute__((used)) static void mwifiex_pcie_card_reset_work(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;




 pci_try_reset_function(card->dev);
}
