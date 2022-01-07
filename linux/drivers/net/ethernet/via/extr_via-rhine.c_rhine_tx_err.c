
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rhine_private {int tx_thresh; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int IntrTxAborted ;
 int IntrTxDescRace ;
 int IntrTxError ;
 int IntrTxUnderrun ;
 int netif_info (struct rhine_private*,int ,struct net_device*,char*,...) ;
 int rhine_kick_tx_threshold (struct rhine_private*) ;
 int rhine_restart_tx (struct net_device*) ;
 int tx_err ;

__attribute__((used)) static void rhine_tx_err(struct rhine_private *rp, u32 status)
{
 struct net_device *dev = rp->dev;

 if (status & IntrTxAborted) {
  netif_info(rp, tx_err, dev,
      "Abort %08x, frame dropped\n", status);
 }

 if (status & IntrTxUnderrun) {
  rhine_kick_tx_threshold(rp);
  netif_info(rp, tx_err ,dev, "Transmitter underrun, "
      "Tx threshold now %02x\n", rp->tx_thresh);
 }

 if (status & IntrTxDescRace)
  netif_info(rp, tx_err, dev, "Tx descriptor write-back race\n");

 if ((status & IntrTxError) &&
     (status & (IntrTxAborted | IntrTxUnderrun | IntrTxDescRace)) == 0) {
  rhine_kick_tx_threshold(rp);
  netif_info(rp, tx_err, dev, "Unspecified error. "
      "Tx threshold now %02x\n", rp->tx_thresh);
 }

 rhine_restart_tx(dev);
}
