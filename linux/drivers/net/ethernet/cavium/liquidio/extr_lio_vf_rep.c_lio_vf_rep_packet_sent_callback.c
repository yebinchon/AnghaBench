
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {struct net_device* dev; } ;
struct octeon_soft_command {int iq_no; int datasize; int dmadptr; struct sk_buff* ctxptr; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 scalar_t__ octnet_iq_is_full (struct octeon_device*,int ) ;

__attribute__((used)) static void
lio_vf_rep_packet_sent_callback(struct octeon_device *oct,
    u32 status, void *buf)
{
 struct octeon_soft_command *sc = (struct octeon_soft_command *)buf;
 struct sk_buff *skb = sc->ctxptr;
 struct net_device *ndev = skb->dev;
 u32 iq_no;

 dma_unmap_single(&oct->pci_dev->dev, sc->dmadptr,
    sc->datasize, DMA_TO_DEVICE);
 dev_kfree_skb_any(skb);
 iq_no = sc->iq_no;
 octeon_free_soft_command(oct, sc);

 if (octnet_iq_is_full(oct, iq_no))
  return;

 if (netif_queue_stopped(ndev))
  netif_wake_queue(ndev);
}
