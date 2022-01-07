
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_service_card {int sleep_cookie_vbase; int sleep_cookie_pbase; int dev; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ENOMEM ;
 int ERROR ;
 int FW_AWAKE_COOKIE ;
 int INFO ;
 int get_unaligned (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int pci_alloc_consistent (int ,int,int *) ;
 int put_unaligned (int ,int ) ;

__attribute__((used)) static int mwifiex_pcie_alloc_sleep_cookie_buf(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 u32 tmp;

 card->sleep_cookie_vbase = pci_alloc_consistent(card->dev, sizeof(u32),
           &card->sleep_cookie_pbase);
 if (!card->sleep_cookie_vbase) {
  mwifiex_dbg(adapter, ERROR,
       "pci_alloc_consistent failed!\n");
  return -ENOMEM;
 }

 tmp = FW_AWAKE_COOKIE;
 put_unaligned(tmp, card->sleep_cookie_vbase);

 mwifiex_dbg(adapter, INFO,
      "alloc_scook: sleep cookie=0x%x\n",
      get_unaligned(card->sleep_cookie_vbase));

 return 0;
}
