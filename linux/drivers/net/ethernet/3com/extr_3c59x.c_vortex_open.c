
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vortex_private {int rx_ring_dma; struct sk_buff** rx_skbuff; TYPE_1__* rx_ring; int gendev; scalar_t__ full_bus_master_rx; } ;
struct sk_buff {int data; } ;
struct net_device {int irq; int name; } ;
struct boom_rx_desc {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* next; void* addr; void* length; scalar_t__ status; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int LAST_FRAG ;
 scalar_t__ NET_IP_ALIGN ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 struct sk_buff* __netdev_alloc_skb (struct net_device*,scalar_t__,int ) ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int free_irq (int,struct net_device*) ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ) ;
 int pr_emerg (char*,int ) ;
 int pr_err (char*,int ,int) ;
 int request_irq (int,int ,int ,int ,struct net_device*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int vortex_boomerang_interrupt ;
 int vortex_debug ;
 int vortex_up (struct net_device*) ;

__attribute__((used)) static int
vortex_open(struct net_device *dev)
{
 struct vortex_private *vp = netdev_priv(dev);
 int i;
 int retval;
 dma_addr_t dma;


 if ((retval = request_irq(dev->irq, vortex_boomerang_interrupt, IRQF_SHARED, dev->name, dev))) {
  pr_err("%s: Could not reserve IRQ %d\n", dev->name, dev->irq);
  goto err;
 }

 if (vp->full_bus_master_rx) {
  if (vortex_debug > 2)
   pr_debug("%s:  Filling in the Rx ring.\n", dev->name);
  for (i = 0; i < RX_RING_SIZE; i++) {
   struct sk_buff *skb;
   vp->rx_ring[i].next = cpu_to_le32(vp->rx_ring_dma + sizeof(struct boom_rx_desc) * (i+1));
   vp->rx_ring[i].status = 0;
   vp->rx_ring[i].length = cpu_to_le32(PKT_BUF_SZ | LAST_FRAG);

   skb = __netdev_alloc_skb(dev, PKT_BUF_SZ + NET_IP_ALIGN,
       GFP_KERNEL);
   vp->rx_skbuff[i] = skb;
   if (skb == ((void*)0))
    break;

   skb_reserve(skb, NET_IP_ALIGN);
   dma = dma_map_single(vp->gendev, skb->data,
          PKT_BUF_SZ, DMA_FROM_DEVICE);
   if (dma_mapping_error(vp->gendev, dma))
    break;
   vp->rx_ring[i].addr = cpu_to_le32(dma);
  }
  if (i != RX_RING_SIZE) {
   pr_emerg("%s: no memory for rx ring\n", dev->name);
   retval = -ENOMEM;
   goto err_free_skb;
  }

  vp->rx_ring[i-1].next = cpu_to_le32(vp->rx_ring_dma);
 }

 retval = vortex_up(dev);
 if (!retval)
  goto out;

err_free_skb:
 for (i = 0; i < RX_RING_SIZE; i++) {
  if (vp->rx_skbuff[i]) {
   dev_kfree_skb(vp->rx_skbuff[i]);
   vp->rx_skbuff[i] = ((void*)0);
  }
 }
 free_irq(dev->irq, dev);
err:
 if (vortex_debug > 1)
  pr_err("%s: vortex_open() fails: returning %d\n", dev->name, retval);
out:
 return retval;
}
