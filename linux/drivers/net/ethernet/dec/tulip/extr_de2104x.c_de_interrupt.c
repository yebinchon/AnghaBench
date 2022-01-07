
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct de_private {int dev; int pdev; int lock; int tx_tail; int tx_head; int rx_tail; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IntrErr ;
 int IntrOK ;
 int LinkFail ;
 int LinkPass ;
 int MacMode ;
 int MacStatus ;
 int NormalRxPoll ;
 int PCI_STATUS ;
 int PciErr ;
 int RxEmpty ;
 int RxIntr ;
 int RxPoll ;
 int TxEmpty ;
 int TxIntr ;
 int de_media_interrupt (struct de_private*,int) ;
 int de_rx (struct de_private*) ;
 int de_tx (struct de_private*) ;
 int dr32 (int ) ;
 int dw32 (int ,int) ;
 int intr ;
 int netdev_err (int ,char*,int,int ) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct de_private*,int ,struct net_device*,char*,int,int,int ,int ,int ) ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_write_config_word (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t de_interrupt (int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct de_private *de = netdev_priv(dev);
 u32 status;

 status = dr32(MacStatus);
 if ((!(status & (IntrOK|IntrErr))) || (status == 0xFFFF))
  return IRQ_NONE;

 netif_dbg(de, intr, dev, "intr, status %08x mode %08x desc %u/%u/%u\n",
    status, dr32(MacMode),
    de->rx_tail, de->tx_head, de->tx_tail);

 dw32(MacStatus, status);

 if (status & (RxIntr | RxEmpty)) {
  de_rx(de);
  if (status & RxEmpty)
   dw32(RxPoll, NormalRxPoll);
 }

 spin_lock(&de->lock);

 if (status & (TxIntr | TxEmpty))
  de_tx(de);

 if (status & (LinkPass | LinkFail))
  de_media_interrupt(de, status);

 spin_unlock(&de->lock);

 if (status & PciErr) {
  u16 pci_status;

  pci_read_config_word(de->pdev, PCI_STATUS, &pci_status);
  pci_write_config_word(de->pdev, PCI_STATUS, pci_status);
  netdev_err(de->dev,
      "PCI bus error, status=%08x, PCI status=%04x\n",
      status, pci_status);
 }

 return IRQ_HANDLED;
}
