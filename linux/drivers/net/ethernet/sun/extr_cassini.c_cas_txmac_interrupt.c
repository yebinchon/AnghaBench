
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int * stat_lock; TYPE_1__* net_stats; int dev; scalar_t__ regs; } ;
struct TYPE_2__ {int collisions; int tx_aborted_errors; int tx_errors; int tx_fifo_errors; } ;


 int KERN_DEBUG ;
 int MAC_TX_COLL_EXCESS ;
 int MAC_TX_COLL_LATE ;
 int MAC_TX_COLL_NORMAL ;
 int MAC_TX_DEFER_TIMER ;
 int MAC_TX_MAX_PACKET_ERR ;
 int MAC_TX_UNDERRUN ;
 scalar_t__ REG_MAC_TX_STATUS ;
 int intr ;
 int netdev_err (struct net_device*,char*) ;
 int netif_printk (struct cas*,int ,int ,int ,char*,int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cas_txmac_interrupt(struct net_device *dev,
          struct cas *cp, u32 status)
{
 u32 txmac_stat = readl(cp->regs + REG_MAC_TX_STATUS);

 if (!txmac_stat)
  return 0;

 netif_printk(cp, intr, KERN_DEBUG, cp->dev,
       "txmac interrupt, txmac_stat: 0x%x\n", txmac_stat);




 if ((txmac_stat & MAC_TX_DEFER_TIMER) &&
     !(txmac_stat & ~MAC_TX_DEFER_TIMER))
  return 0;

 spin_lock(&cp->stat_lock[0]);
 if (txmac_stat & MAC_TX_UNDERRUN) {
  netdev_err(dev, "TX MAC xmit underrun\n");
  cp->net_stats[0].tx_fifo_errors++;
 }

 if (txmac_stat & MAC_TX_MAX_PACKET_ERR) {
  netdev_err(dev, "TX MAC max packet size error\n");
  cp->net_stats[0].tx_errors++;
 }




 if (txmac_stat & MAC_TX_COLL_NORMAL)
  cp->net_stats[0].collisions += 0x10000;

 if (txmac_stat & MAC_TX_COLL_EXCESS) {
  cp->net_stats[0].tx_aborted_errors += 0x10000;
  cp->net_stats[0].collisions += 0x10000;
 }

 if (txmac_stat & MAC_TX_COLL_LATE) {
  cp->net_stats[0].tx_aborted_errors += 0x10000;
  cp->net_stats[0].collisions += 0x10000;
 }
 spin_unlock(&cp->stat_lock[0]);




 return 0;
}
