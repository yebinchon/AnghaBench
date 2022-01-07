
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct r6040_private {int pdev; struct r6040_descriptor* rx_ring; int rx_ring_dma; struct r6040_descriptor* rx_insert_ptr; struct r6040_descriptor* rx_remove_ptr; } ;
struct r6040_descriptor {struct r6040_descriptor* vndescp; int status; struct sk_buff* skb_ptr; int buf; } ;
struct net_device {int dummy; } ;


 int DSC_OWNER_MAC ;
 int ENOMEM ;
 int MAX_BUF_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_DCNT ;
 int cpu_to_le32 (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int r6040_free_rxbufs (struct net_device*) ;
 int r6040_init_ring_desc (struct r6040_descriptor*,int ,int ) ;

__attribute__((used)) static int r6040_alloc_rxbufs(struct net_device *dev)
{
 struct r6040_private *lp = netdev_priv(dev);
 struct r6040_descriptor *desc;
 struct sk_buff *skb;
 int rc;

 lp->rx_remove_ptr = lp->rx_insert_ptr = lp->rx_ring;
 r6040_init_ring_desc(lp->rx_ring, lp->rx_ring_dma, RX_DCNT);


 desc = lp->rx_ring;
 do {
  skb = netdev_alloc_skb(dev, MAX_BUF_SIZE);
  if (!skb) {
   rc = -ENOMEM;
   goto err_exit;
  }
  desc->skb_ptr = skb;
  desc->buf = cpu_to_le32(pci_map_single(lp->pdev,
     desc->skb_ptr->data,
     MAX_BUF_SIZE, PCI_DMA_FROMDEVICE));
  desc->status = DSC_OWNER_MAC;
  desc = desc->vndescp;
 } while (desc != lp->rx_ring);

 return 0;

err_exit:

 r6040_free_rxbufs(dev);
 return rc;
}
