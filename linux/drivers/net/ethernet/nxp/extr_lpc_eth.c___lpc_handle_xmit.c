
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netdata_local {int last_tx_idx; unsigned int* skblen; int* tx_stat_v; int num_used_tx_buffs; int net_base; } ;
struct TYPE_2__ {unsigned int tx_bytes; int tx_packets; int tx_errors; int tx_aborted_errors; int tx_fifo_errors; int collisions; } ;
struct net_device {TYPE_1__ stats; } ;


 int ENET_TX_DESC ;
 int LPC_ENET_TXCONSUMEINDEX (int ) ;
 scalar_t__ TXSTATUS_COLLISIONS_GET (int) ;
 int TXSTATUS_ERROR ;
 int TXSTATUS_EXCESSCOLL ;
 int TXSTATUS_EXCESSDEFER ;
 int TXSTATUS_LATECOLL ;
 int TXSTATUS_UNDERRUN ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int readl (int ) ;

__attribute__((used)) static void __lpc_handle_xmit(struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 u32 txcidx, *ptxstat, txstat;

 txcidx = readl(LPC_ENET_TXCONSUMEINDEX(pldat->net_base));
 while (pldat->last_tx_idx != txcidx) {
  unsigned int skblen = pldat->skblen[pldat->last_tx_idx];


  ptxstat = &pldat->tx_stat_v[pldat->last_tx_idx];
  txstat = *ptxstat;


  pldat->num_used_tx_buffs--;
  pldat->last_tx_idx++;
  if (pldat->last_tx_idx >= ENET_TX_DESC)
   pldat->last_tx_idx = 0;


  ndev->stats.collisions += TXSTATUS_COLLISIONS_GET(txstat);


  if (txstat & TXSTATUS_ERROR) {
   if (txstat & TXSTATUS_UNDERRUN) {

    ndev->stats.tx_fifo_errors++;
   }
   if (txstat & TXSTATUS_LATECOLL) {

    ndev->stats.tx_aborted_errors++;
   }
   if (txstat & TXSTATUS_EXCESSCOLL) {

    ndev->stats.tx_aborted_errors++;
   }
   if (txstat & TXSTATUS_EXCESSDEFER) {

    ndev->stats.tx_aborted_errors++;
   }
   ndev->stats.tx_errors++;
  } else {

   ndev->stats.tx_packets++;
   ndev->stats.tx_bytes += skblen;
  }

  txcidx = readl(LPC_ENET_TXCONSUMEINDEX(pldat->net_base));
 }

 if (pldat->num_used_tx_buffs <= ENET_TX_DESC/2) {
  if (netif_queue_stopped(ndev))
   netif_wake_queue(ndev);
 }
}
