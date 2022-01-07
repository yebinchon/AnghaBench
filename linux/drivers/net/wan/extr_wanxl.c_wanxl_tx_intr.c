
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct port {size_t tx_in; TYPE_2__* card; struct sk_buff** tx_skbs; struct net_device* dev; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; int tx_fifo_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {int stat; int address; } ;
typedef TYPE_3__ desc_t ;
struct TYPE_8__ {TYPE_3__* tx_descs; } ;
struct TYPE_6__ {int pdev; } ;





 int PCI_DMA_TODEVICE ;
 int TX_BUFFERS ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 TYPE_4__* get_status (struct port*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static inline void wanxl_tx_intr(struct port *port)
{
 struct net_device *dev = port->dev;
 while (1) {
                desc_t *desc = &get_status(port)->tx_descs[port->tx_in];
  struct sk_buff *skb = port->tx_skbs[port->tx_in];

  switch (desc->stat) {
  case 129:
  case 130:
   netif_wake_queue(dev);
   return;

  case 128:
   dev->stats.tx_errors++;
   dev->stats.tx_fifo_errors++;
   break;

  default:
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += skb->len;
  }
                desc->stat = 130;
  pci_unmap_single(port->card->pdev, desc->address, skb->len,
     PCI_DMA_TODEVICE);
  dev_consume_skb_irq(skb);
                port->tx_in = (port->tx_in + 1) % TX_BUFFERS;
        }
}
