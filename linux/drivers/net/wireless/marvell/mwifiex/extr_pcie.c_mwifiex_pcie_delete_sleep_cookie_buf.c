
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_service_card {int * sleep_cookie_vbase; int sleep_cookie_pbase; int dev; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static int mwifiex_pcie_delete_sleep_cookie_buf(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card;

 if (!adapter)
  return 0;

 card = adapter->card;

 if (card && card->sleep_cookie_vbase) {
  pci_free_consistent(card->dev, sizeof(u32),
        card->sleep_cookie_vbase,
        card->sleep_cookie_pbase);
  card->sleep_cookie_vbase = ((void*)0);
 }

 return 0;
}
