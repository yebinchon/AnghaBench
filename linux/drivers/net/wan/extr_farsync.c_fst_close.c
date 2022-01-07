
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fst_port_info {scalar_t__ mode; struct fst_card_info* card; } ;
struct fst_card_info {int dmarx_in_progress; int dmatx_in_progress; scalar_t__ pci_conf; } ;


 int DBG_OPEN ;
 scalar_t__ DMACSR0 ;
 scalar_t__ DMACSR1 ;
 scalar_t__ FST_RAW ;
 int THIS_MODULE ;
 int dbg (int ,char*,int ,unsigned char,int ,unsigned char) ;
 struct fst_port_info* dev_to_port (struct net_device*) ;
 int fst_closeport (struct fst_port_info*) ;
 int hdlc_close (struct net_device*) ;
 unsigned char inb (scalar_t__) ;
 int module_put (int ) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
fst_close(struct net_device *dev)
{
 struct fst_port_info *port;
 struct fst_card_info *card;
 unsigned char tx_dma_done;
 unsigned char rx_dma_done;

 port = dev_to_port(dev);
 card = port->card;

 tx_dma_done = inb(card->pci_conf + DMACSR1);
 rx_dma_done = inb(card->pci_conf + DMACSR0);
 dbg(DBG_OPEN,
     "Port Close: tx_dma_in_progress = %d (%x) rx_dma_in_progress = %d (%x)\n",
     card->dmatx_in_progress, tx_dma_done, card->dmarx_in_progress,
     rx_dma_done);

 netif_stop_queue(dev);
 fst_closeport(dev_to_port(dev));
 if (port->mode != FST_RAW) {
  hdlc_close(dev);
 }
 module_put(THIS_MODULE);
 return 0;
}
