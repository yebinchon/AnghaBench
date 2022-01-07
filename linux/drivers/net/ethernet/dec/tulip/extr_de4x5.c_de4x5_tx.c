
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct TYPE_6__ {int collisions; int tx_packets; int tx_aborted_errors; int tx_fifo_errors; int tx_window_errors; int tx_carrier_errors; int tx_errors; } ;
struct TYPE_5__ {int excessive_collisions; } ;
struct de4x5_private {int tx_old; int tx_new; int txRingSize; scalar_t__ interrupt; int ** tx_skb; TYPE_3__ stats; int linkOK; scalar_t__ tx_enable; TYPE_2__ pktStats; TYPE_1__* tx_ring; } ;
typedef int s32 ;
struct TYPE_4__ {int status; } ;


 int DE4X5_TPD ;
 int POLL_DEMAND ;
 int TD_CC ;
 int TD_DE ;
 int TD_EC ;
 int TD_ES ;
 int TD_LC ;
 int TD_NC ;
 int TD_UF ;
 scalar_t__ TX_BUFFS_AVAIL ;
 scalar_t__ TX_PKT_PENDING ;
 int de4x5_free_tx_buff (struct de4x5_private*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outl (int ,int ) ;

__attribute__((used)) static int
de4x5_tx(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int entry;
    s32 status;

    for (entry = lp->tx_old; entry != lp->tx_new; entry = lp->tx_old) {
 status = (s32)le32_to_cpu(lp->tx_ring[entry].status);
 if (status < 0) {
     break;
 } else if (status != 0x7fffffff) {
     if (status & TD_ES) {
  lp->stats.tx_errors++;
  if (status & TD_NC) lp->stats.tx_carrier_errors++;
  if (status & TD_LC) lp->stats.tx_window_errors++;
  if (status & TD_UF) lp->stats.tx_fifo_errors++;
  if (status & TD_EC) lp->pktStats.excessive_collisions++;
  if (status & TD_DE) lp->stats.tx_aborted_errors++;

  if (TX_PKT_PENDING) {
      outl(POLL_DEMAND, DE4X5_TPD);
  }
     } else {
  lp->stats.tx_packets++;
  if (lp->tx_enable) lp->linkOK++;
     }

     lp->stats.collisions += ((status & TD_EC) ? 16 :
                          ((status & TD_CC) >> 3));


     if (lp->tx_skb[entry] != ((void*)0))
      de4x5_free_tx_buff(lp, entry);
 }


 lp->tx_old = (lp->tx_old + 1) % lp->txRingSize;
    }


    if (TX_BUFFS_AVAIL && netif_queue_stopped(dev)) {
 if (lp->interrupt)
     netif_wake_queue(dev);
 else
     netif_start_queue(dev);
    }

    return 0;
}
