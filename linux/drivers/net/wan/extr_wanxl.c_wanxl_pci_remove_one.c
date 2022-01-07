
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct card_status {int dummy; } ;
struct card {int n_ports; int status_address; TYPE_3__* status; scalar_t__ plx; scalar_t__* rx_skbs; int pdev; scalar_t__ irq; TYPE_1__* ports; } ;
struct TYPE_6__ {TYPE_2__* rx_descs; } ;
struct TYPE_5__ {int address; } ;
struct TYPE_4__ {int dev; } ;


 int BUFFER_LENGTH ;
 int PCI_DMA_FROMDEVICE ;
 int RX_QUEUE_LENGTH ;
 int dev_kfree_skb (scalar_t__) ;
 int free_irq (scalar_t__,struct card*) ;
 int free_netdev (int ) ;
 int iounmap (scalar_t__) ;
 int kfree (struct card*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,TYPE_3__*,int ) ;
 struct card* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int unregister_hdlc_device (int ) ;
 int wanxl_reset (struct card*) ;

__attribute__((used)) static void wanxl_pci_remove_one(struct pci_dev *pdev)
{
 struct card *card = pci_get_drvdata(pdev);
 int i;

 for (i = 0; i < card->n_ports; i++) {
  unregister_hdlc_device(card->ports[i].dev);
  free_netdev(card->ports[i].dev);
 }


 if (card->irq)
  free_irq(card->irq, card);

 wanxl_reset(card);

 for (i = 0; i < RX_QUEUE_LENGTH; i++)
  if (card->rx_skbs[i]) {
   pci_unmap_single(card->pdev,
      card->status->rx_descs[i].address,
      BUFFER_LENGTH, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(card->rx_skbs[i]);
  }

 if (card->plx)
  iounmap(card->plx);

 if (card->status)
  pci_free_consistent(pdev, sizeof(struct card_status),
        card->status, card->status_address);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(card);
}
