
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int rxbd_rdptr; scalar_t__ rxbd_ring_pbase; int * rxbd_ring_vbase; scalar_t__ rxbd_wrptr; scalar_t__ rxbd_ring_size; int dev; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int rx_rollover_ind; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int mwifiex_cleanup_rxq_ring (struct mwifiex_adapter*) ;
 int pci_free_consistent (int ,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static int mwifiex_pcie_delete_rxbd_ring(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

 mwifiex_cleanup_rxq_ring(adapter);

 if (card->rxbd_ring_vbase)
  pci_free_consistent(card->dev, card->rxbd_ring_size,
        card->rxbd_ring_vbase,
        card->rxbd_ring_pbase);
 card->rxbd_ring_size = 0;
 card->rxbd_wrptr = 0;
 card->rxbd_rdptr = 0 | reg->rx_rollover_ind;
 card->rxbd_ring_vbase = ((void*)0);
 card->rxbd_ring_pbase = 0;

 return 0;
}
