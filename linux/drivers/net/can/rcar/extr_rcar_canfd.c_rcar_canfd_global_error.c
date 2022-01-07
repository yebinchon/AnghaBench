
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_canfd_global {scalar_t__ fdmode; } ;
struct rcar_canfd_channel {int channel; int base; struct rcar_canfd_global* gpriv; } ;
struct net_device_stats {int rx_dropped; int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;


 int RCANFD_CFFIFO_IDX ;
 int RCANFD_CFSTS (int,int ) ;
 int RCANFD_CFSTS_CFMLT ;
 int RCANFD_GERFL ;
 int RCANFD_GERFL_CMPOF ;
 int RCANFD_GERFL_EEF0 ;
 int RCANFD_GERFL_EEF1 ;
 int RCANFD_GERFL_MES ;
 int RCANFD_RFFIFO_IDX ;
 int RCANFD_RFSTS (int) ;
 int RCANFD_RFSTS_RFMLT ;
 int netdev_dbg (struct net_device*,char*) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device*) ;
 int rcar_canfd_read (int ,int ) ;
 int rcar_canfd_write (int ,int ,int) ;

__attribute__((used)) static void rcar_canfd_global_error(struct net_device *ndev)
{
 struct rcar_canfd_channel *priv = netdev_priv(ndev);
 struct rcar_canfd_global *gpriv = priv->gpriv;
 struct net_device_stats *stats = &ndev->stats;
 u32 ch = priv->channel;
 u32 gerfl, sts;
 u32 ridx = ch + RCANFD_RFFIFO_IDX;

 gerfl = rcar_canfd_read(priv->base, RCANFD_GERFL);
 if ((gerfl & RCANFD_GERFL_EEF0) && (ch == 0)) {
  netdev_dbg(ndev, "Ch0: ECC Error flag\n");
  stats->tx_dropped++;
 }
 if ((gerfl & RCANFD_GERFL_EEF1) && (ch == 1)) {
  netdev_dbg(ndev, "Ch1: ECC Error flag\n");
  stats->tx_dropped++;
 }
 if (gerfl & RCANFD_GERFL_MES) {
  sts = rcar_canfd_read(priv->base,
          RCANFD_CFSTS(ch, RCANFD_CFFIFO_IDX));
  if (sts & RCANFD_CFSTS_CFMLT) {
   netdev_dbg(ndev, "Tx Message Lost flag\n");
   stats->tx_dropped++;
   rcar_canfd_write(priv->base,
      RCANFD_CFSTS(ch, RCANFD_CFFIFO_IDX),
      sts & ~RCANFD_CFSTS_CFMLT);
  }

  sts = rcar_canfd_read(priv->base, RCANFD_RFSTS(ridx));
  if (sts & RCANFD_RFSTS_RFMLT) {
   netdev_dbg(ndev, "Rx Message Lost flag\n");
   stats->rx_dropped++;
   rcar_canfd_write(priv->base, RCANFD_RFSTS(ridx),
      sts & ~RCANFD_RFSTS_RFMLT);
  }
 }
 if (gpriv->fdmode && gerfl & RCANFD_GERFL_CMPOF) {




  netdev_dbg(ndev, "global payload overflow interrupt\n");
 }




 rcar_canfd_write(priv->base, RCANFD_GERFL, 0);
}
