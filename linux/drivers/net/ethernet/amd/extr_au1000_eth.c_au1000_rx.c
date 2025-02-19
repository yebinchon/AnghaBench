
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; } ;
struct rx_dma {int buff_stat; int status; } ;
struct TYPE_2__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct db_dest {int dma_addr; scalar_t__ vaddr; } ;
struct au1000_private {size_t rx_head; struct rx_dma** rx_dma_ring; struct db_dest** rx_db_inuse; } ;


 int NUM_RX_DMA ;
 int RX_COLL ;
 int RX_CRC_ERROR ;
 int RX_DMA_ENABLE ;
 int RX_ERROR ;
 int RX_FRAME_LEN_MASK ;
 int RX_LEN_ERROR ;
 int RX_MII_ERROR ;
 int RX_MISSED_FRAME ;
 int RX_OVERLEN ;
 int RX_RUNT ;
 int RX_T_DONE ;
 int RX_U_CNTRL_FRAME ;
 int RX_WDOG_TIMER ;
 int au1000_debug ;
 int au1000_update_rx_stats (struct net_device*,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private*,int ,struct net_device*,char*,size_t) ;
 int netif_rx (struct sk_buff*) ;
 int pr_cont (char*) ;
 int pr_err (char*) ;
 int rx_status ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int wmb () ;

__attribute__((used)) static int au1000_rx(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 struct sk_buff *skb;
 struct rx_dma *prxd;
 u32 buff_stat, status;
 struct db_dest *pDB;
 u32 frmlen;

 netif_dbg(aup, rx_status, dev, "au1000_rx head %d\n", aup->rx_head);

 prxd = aup->rx_dma_ring[aup->rx_head];
 buff_stat = prxd->buff_stat;
 while (buff_stat & RX_T_DONE) {
  status = prxd->status;
  pDB = aup->rx_db_inuse[aup->rx_head];
  au1000_update_rx_stats(dev, status);
  if (!(status & RX_ERROR)) {


   frmlen = (status & RX_FRAME_LEN_MASK);
   frmlen -= 4;
   skb = netdev_alloc_skb(dev, frmlen + 2);
   if (skb == ((void*)0)) {
    dev->stats.rx_dropped++;
    continue;
   }
   skb_reserve(skb, 2);
   skb_copy_to_linear_data(skb,
    (unsigned char *)pDB->vaddr, frmlen);
   skb_put(skb, frmlen);
   skb->protocol = eth_type_trans(skb, dev);
   netif_rx(skb);
  } else {
   if (au1000_debug > 4) {
    pr_err("rx_error(s):");
    if (status & RX_MISSED_FRAME)
     pr_cont(" miss");
    if (status & RX_WDOG_TIMER)
     pr_cont(" wdog");
    if (status & RX_RUNT)
     pr_cont(" runt");
    if (status & RX_OVERLEN)
     pr_cont(" overlen");
    if (status & RX_COLL)
     pr_cont(" coll");
    if (status & RX_MII_ERROR)
     pr_cont(" mii error");
    if (status & RX_CRC_ERROR)
     pr_cont(" crc error");
    if (status & RX_LEN_ERROR)
     pr_cont(" len error");
    if (status & RX_U_CNTRL_FRAME)
     pr_cont(" u control frame");
    pr_cont("\n");
   }
  }
  prxd->buff_stat = (u32)(pDB->dma_addr | RX_DMA_ENABLE);
  aup->rx_head = (aup->rx_head + 1) & (NUM_RX_DMA - 1);
  wmb();


  prxd = aup->rx_dma_ring[aup->rx_head];
  buff_stat = prxd->buff_stat;
 }
 return 0;
}
