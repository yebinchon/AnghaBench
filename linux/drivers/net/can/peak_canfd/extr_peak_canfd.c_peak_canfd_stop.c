
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_canfd_priv {int index; int ndev; } ;


 int PUCAN_TX_ABORT_FLUSH ;
 int netdev_err (int ,char*,int ) ;
 int pucan_set_reset_mode (struct peak_canfd_priv*) ;
 int pucan_tx_abort (struct peak_canfd_priv*,int ) ;

__attribute__((used)) static void peak_canfd_stop(struct peak_canfd_priv *priv)
{
 int err;


 err = pucan_set_reset_mode(priv);
 if (err) {
  netdev_err(priv->ndev, "channel %u reset failed\n",
      priv->index);
 } else {

  pucan_tx_abort(priv, PUCAN_TX_ABORT_FLUSH);
 }
}
