
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int txbd_rdptr; scalar_t__ txbd_ring_pbase; int * txbd_ring_vbase; scalar_t__ txbd_wrptr; scalar_t__ txbd_ring_size; int dev; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int tx_rollover_ind; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int mwifiex_cleanup_txq_ring (struct mwifiex_adapter*) ;
 int pci_free_consistent (int ,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static int mwifiex_pcie_delete_txbd_ring(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

 mwifiex_cleanup_txq_ring(adapter);

 if (card->txbd_ring_vbase)
  pci_free_consistent(card->dev, card->txbd_ring_size,
        card->txbd_ring_vbase,
        card->txbd_ring_pbase);
 card->txbd_ring_size = 0;
 card->txbd_wrptr = 0;
 card->txbd_rdptr = 0 | reg->tx_rollover_ind;
 card->txbd_ring_vbase = ((void*)0);
 card->txbd_ring_pbase = 0;

 return 0;
}
