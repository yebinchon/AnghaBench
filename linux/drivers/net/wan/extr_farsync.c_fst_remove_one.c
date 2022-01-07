
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct fst_card_info {int nports; scalar_t__ family; size_t card_no; int tx_dma_handle_card; int tx_dma_handle_host; int device; int rx_dma_handle_card; int rx_dma_handle_host; int mem; int ctlmem; int irq; int * ports; } ;


 scalar_t__ FST_FAMILY_TXU ;
 int FST_MAX_MTU ;
 int free_irq (int ,struct fst_card_info*) ;
 int ** fst_card_array ;
 int fst_disable_intr (struct fst_card_info*) ;
 int iounmap (int ) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 struct fst_card_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 struct net_device* port_to_dev (int *) ;
 int unregister_hdlc_device (struct net_device*) ;

__attribute__((used)) static void
fst_remove_one(struct pci_dev *pdev)
{
 struct fst_card_info *card;
 int i;

 card = pci_get_drvdata(pdev);

 for (i = 0; i < card->nports; i++) {
  struct net_device *dev = port_to_dev(&card->ports[i]);
  unregister_hdlc_device(dev);
 }

 fst_disable_intr(card);
 free_irq(card->irq, card);

 iounmap(card->ctlmem);
 iounmap(card->mem);
 pci_release_regions(pdev);
 if (card->family == FST_FAMILY_TXU) {



  pci_free_consistent(card->device, FST_MAX_MTU,
        card->rx_dma_handle_host,
        card->rx_dma_handle_card);
  pci_free_consistent(card->device, FST_MAX_MTU,
        card->tx_dma_handle_host,
        card->tx_dma_handle_card);
 }
 fst_card_array[card->card_no] = ((void*)0);
}
