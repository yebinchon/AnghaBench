
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct port {int node; TYPE_4__** tx_skbs; TYPE_1__* card; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ stat; int address; } ;
typedef TYPE_2__ desc_t ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {TYPE_2__* tx_descs; scalar_t__ open; } ;
struct TYPE_5__ {int pdev; scalar_t__ plx; } ;


 int DOORBELL_TO_CARD_CLOSE_0 ;
 unsigned long HZ ;
 scalar_t__ PACKET_EMPTY ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ PLX_DOORBELL_TO_CARD ;
 int TX_BUFFERS ;
 int dev_kfree_skb (TYPE_4__*) ;
 struct port* dev_to_port (struct net_device*) ;
 TYPE_3__* get_status (struct port*) ;
 int hdlc_close (struct net_device*) ;
 unsigned long jiffies ;
 int netdev_err (struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int wanxl_close(struct net_device *dev)
{
 struct port *port = dev_to_port(dev);
 unsigned long timeout;
 int i;

 hdlc_close(dev);

 writel(1 << (DOORBELL_TO_CARD_CLOSE_0 + port->node),
        port->card->plx + PLX_DOORBELL_TO_CARD);

 timeout = jiffies + HZ;
 do {
  if (!get_status(port)->open)
   break;
 } while (time_after(timeout, jiffies));

 if (get_status(port)->open)
  netdev_err(dev, "unable to close port\n");

 netif_stop_queue(dev);

 for (i = 0; i < TX_BUFFERS; i++) {
  desc_t *desc = &get_status(port)->tx_descs[i];

  if (desc->stat != PACKET_EMPTY) {
   desc->stat = PACKET_EMPTY;
   pci_unmap_single(port->card->pdev, desc->address,
      port->tx_skbs[i]->len,
      PCI_DMA_TODEVICE);
   dev_kfree_skb(port->tx_skbs[i]);
  }
 }
 return 0;
}
