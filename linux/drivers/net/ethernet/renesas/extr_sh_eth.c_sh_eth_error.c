
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_eth_private {TYPE_2__* cd; int dirty_tx; int cur_tx; } ;
struct TYPE_3__ {int tx_fifo_errors; int rx_fifo_errors; int rx_over_errors; int rx_frame_errors; int tx_aborted_errors; } ;
struct net_device {scalar_t__ state; TYPE_1__ stats; } ;
struct TYPE_4__ {int edtrr_trns; scalar_t__ no_ade; } ;


 int EDTRR ;
 int EESR_ADE ;
 int EESR_RABT ;
 int EESR_RDE ;
 int EESR_RFE ;
 int EESR_RFRMER ;
 int EESR_TABT ;
 int EESR_TDE ;
 int EESR_TFE ;
 int EESR_TWB ;
 int netdev_err (struct net_device*,char*,int,int ,int ,int,int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_err (struct sh_eth_private*,int ,struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int sh_eth_read (struct net_device*,int ) ;
 int sh_eth_tx_free (struct net_device*,int) ;
 int sh_eth_write (struct net_device*,int,int ) ;
 int tx_err ;

__attribute__((used)) static void sh_eth_error(struct net_device *ndev, u32 intr_status)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u32 mask;

 if (intr_status & EESR_TWB) {

  if (intr_status & EESR_TABT) {
   ndev->stats.tx_aborted_errors++;
   netif_err(mdp, tx_err, ndev, "Transmit Abort\n");
  }
 }

 if (intr_status & EESR_RABT) {

  if (intr_status & EESR_RFRMER) {

   ndev->stats.rx_frame_errors++;
  }
 }

 if (intr_status & EESR_TDE) {

  ndev->stats.tx_fifo_errors++;
  netif_err(mdp, tx_err, ndev, "Transmit Descriptor Empty\n");
 }

 if (intr_status & EESR_TFE) {

  ndev->stats.tx_fifo_errors++;
  netif_err(mdp, tx_err, ndev, "Transmit FIFO Under flow\n");
 }

 if (intr_status & EESR_RDE) {

  ndev->stats.rx_over_errors++;
 }

 if (intr_status & EESR_RFE) {

  ndev->stats.rx_fifo_errors++;
 }

 if (!mdp->cd->no_ade && (intr_status & EESR_ADE)) {

  ndev->stats.tx_fifo_errors++;
  netif_err(mdp, tx_err, ndev, "Address Error\n");
 }

 mask = EESR_TWB | EESR_TABT | EESR_ADE | EESR_TDE | EESR_TFE;
 if (mdp->cd->no_ade)
  mask &= ~EESR_ADE;
 if (intr_status & mask) {

  u32 edtrr = sh_eth_read(ndev, EDTRR);


  netdev_err(ndev, "TX error. status=%8.8x cur_tx=%8.8x dirty_tx=%8.8x state=%8.8x EDTRR=%8.8x.\n",
      intr_status, mdp->cur_tx, mdp->dirty_tx,
      (u32)ndev->state, edtrr);

  sh_eth_tx_free(ndev, 1);


  if (edtrr ^ mdp->cd->edtrr_trns) {

   sh_eth_write(ndev, mdp->cd->edtrr_trns, EDTRR);
  }

  netif_wake_queue(ndev);
 }
}
