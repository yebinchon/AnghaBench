
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {scalar_t__ sleep_cookie; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int mwifiex_pcie_delete_cmdrsp_buf (struct mwifiex_adapter*) ;
 int mwifiex_pcie_delete_evtbd_ring (struct mwifiex_adapter*) ;
 int mwifiex_pcie_delete_rxbd_ring (struct mwifiex_adapter*) ;
 int mwifiex_pcie_delete_sleep_cookie_buf (struct mwifiex_adapter*) ;
 int mwifiex_pcie_delete_txbd_ring (struct mwifiex_adapter*) ;

__attribute__((used)) static void mwifiex_pcie_free_buffers(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

 if (reg->sleep_cookie)
  mwifiex_pcie_delete_sleep_cookie_buf(adapter);

 mwifiex_pcie_delete_cmdrsp_buf(adapter);
 mwifiex_pcie_delete_evtbd_ring(adapter);
 mwifiex_pcie_delete_rxbd_ring(adapter);
 mwifiex_pcie_delete_txbd_ring(adapter);
}
