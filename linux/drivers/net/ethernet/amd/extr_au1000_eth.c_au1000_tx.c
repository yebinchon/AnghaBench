
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_dma {int buff_stat; int len; int status; } ;
struct sk_buff {int len; int data; } ;
struct net_device_stats {int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct db_dest {int dma_addr; scalar_t__ vaddr; } ;
struct au1000_private {size_t tx_head; int tx_full; struct db_dest** tx_db_inuse; struct tx_dma** tx_dma_ring; } ;
typedef int netdev_tx_t ;


 int ETH_ZLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NUM_TX_DMA ;
 int TX_DMA_ENABLE ;
 int TX_T_DONE ;
 int au1000_update_tx_stats (struct net_device*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private*,int ,struct net_device*,char*,unsigned int,int,int ,size_t) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,void*,int) ;
 int tx_queued ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t au1000_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 struct net_device_stats *ps = &dev->stats;
 struct tx_dma *ptxd;
 u32 buff_stat;
 struct db_dest *pDB;
 int i;

 netif_dbg(aup, tx_queued, dev, "tx: aup %x len=%d, data=%p, head %d\n",
    (unsigned)aup, skb->len,
    skb->data, aup->tx_head);

 ptxd = aup->tx_dma_ring[aup->tx_head];
 buff_stat = ptxd->buff_stat;
 if (buff_stat & TX_DMA_ENABLE) {

  netif_stop_queue(dev);
  aup->tx_full = 1;
  return NETDEV_TX_BUSY;
 } else if (buff_stat & TX_T_DONE) {
  au1000_update_tx_stats(dev, ptxd->status);
  ptxd->len = 0;
 }

 if (aup->tx_full) {
  aup->tx_full = 0;
  netif_wake_queue(dev);
 }

 pDB = aup->tx_db_inuse[aup->tx_head];
 skb_copy_from_linear_data(skb, (void *)pDB->vaddr, skb->len);
 if (skb->len < ETH_ZLEN) {
  for (i = skb->len; i < ETH_ZLEN; i++)
   ((char *)pDB->vaddr)[i] = 0;

  ptxd->len = ETH_ZLEN;
 } else
  ptxd->len = skb->len;

 ps->tx_packets++;
 ps->tx_bytes += ptxd->len;

 ptxd->buff_stat = pDB->dma_addr | TX_DMA_ENABLE;
 wmb();
 dev_kfree_skb(skb);
 aup->tx_head = (aup->tx_head + 1) & (NUM_TX_DMA - 1);
 return NETDEV_TX_OK;
}
