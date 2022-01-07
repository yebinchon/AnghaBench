
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct amd8111e_priv {int tx_complete_idx; int tx_idx; TYPE_2__* tx_ring; TYPE_1__ coal_conf; scalar_t__* tx_dma_addr; TYPE_3__** tx_skbuff; int pci_dev; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {int buff_count; scalar_t__ buff_phy_addr; int tx_flags; } ;


 int NUM_TX_BUFFERS ;
 int OWN_BIT ;
 int PCI_DMA_TODEVICE ;
 int TX_RING_DR_MOD_MASK ;
 int dev_consume_skb_irq (TYPE_3__*) ;
 int le16_to_cpu (int ) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int amd8111e_tx(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int tx_index;
 int status;

 while (lp->tx_complete_idx != lp->tx_idx){
  tx_index = lp->tx_complete_idx & TX_RING_DR_MOD_MASK;
  status = le16_to_cpu(lp->tx_ring[tx_index].tx_flags);

  if(status & OWN_BIT)
   break;

  lp->tx_ring[tx_index].buff_phy_addr = 0;


  if (lp->tx_skbuff[tx_index]) {
   pci_unmap_single(lp->pci_dev, lp->tx_dma_addr[tx_index],
       lp->tx_skbuff[tx_index]->len,
     PCI_DMA_TODEVICE);
   dev_consume_skb_irq(lp->tx_skbuff[tx_index]);
   lp->tx_skbuff[tx_index] = ((void*)0);
   lp->tx_dma_addr[tx_index] = 0;
  }
  lp->tx_complete_idx++;

  lp->coal_conf.tx_packets++;
  lp->coal_conf.tx_bytes +=
   le16_to_cpu(lp->tx_ring[tx_index].buff_count);

  if (netif_queue_stopped(dev) &&
   lp->tx_complete_idx > lp->tx_idx - NUM_TX_BUFFERS +2){


   netif_wake_queue (dev);
  }
 }
 return 0;
}
