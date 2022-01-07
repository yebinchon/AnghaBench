
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct amd8111e_priv {scalar_t__* rx_dma_addr; struct sk_buff** rx_skbuff; scalar_t__ rx_buff_len; int pci_dev; scalar_t__* tx_dma_addr; struct sk_buff** tx_skbuff; } ;


 int NUM_RX_BUFFERS ;
 int NUM_TX_BUFFERS ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int amd8111e_free_skbs(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 struct sk_buff *rx_skbuff;
 int i;


 for(i = 0; i < NUM_TX_BUFFERS; i++){
  if(lp->tx_skbuff[i]){
   pci_unmap_single(lp->pci_dev,lp->tx_dma_addr[i], lp->tx_skbuff[i]->len,PCI_DMA_TODEVICE);
   dev_kfree_skb (lp->tx_skbuff[i]);
   lp->tx_skbuff[i] = ((void*)0);
   lp->tx_dma_addr[i] = 0;
  }
 }

 for (i = 0; i < NUM_RX_BUFFERS; i++){
  rx_skbuff = lp->rx_skbuff[i];
  if(rx_skbuff != ((void*)0)){
   pci_unmap_single(lp->pci_dev,lp->rx_dma_addr[i],
      lp->rx_buff_len - 2,PCI_DMA_FROMDEVICE);
   dev_kfree_skb(lp->rx_skbuff[i]);
   lp->rx_skbuff[i] = ((void*)0);
   lp->rx_dma_addr[i] = 0;
  }
 }

 return 0;
}
