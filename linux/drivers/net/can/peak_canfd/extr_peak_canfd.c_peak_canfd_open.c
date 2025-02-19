
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrlmode; } ;
struct peak_canfd_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int PUCAN_FLTSTD_ROW_IDX_MAX ;
 int PUCAN_OPTION_CANDFDISO ;
 int PUCAN_OPTION_ERROR ;
 int close_candev (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int peak_canfd_start (struct peak_canfd_priv*) ;
 int pucan_clr_options (struct peak_canfd_priv*,int ) ;
 int pucan_set_options (struct peak_canfd_priv*,int ) ;
 int pucan_set_reset_mode (struct peak_canfd_priv*) ;
 int pucan_set_std_filter (struct peak_canfd_priv*,int,int) ;
 int pucan_setup_rx_barrier (struct peak_canfd_priv*) ;

__attribute__((used)) static int peak_canfd_open(struct net_device *ndev)
{
 struct peak_canfd_priv *priv = netdev_priv(ndev);
 int i, err = 0;

 err = open_candev(ndev);
 if (err) {
  netdev_err(ndev, "open_candev() failed, error %d\n", err);
  goto err_exit;
 }

 err = pucan_set_reset_mode(priv);
 if (err)
  goto err_close;

 if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {
  if (priv->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO)
   err = pucan_clr_options(priv, PUCAN_OPTION_CANDFDISO);
  else
   err = pucan_set_options(priv, PUCAN_OPTION_CANDFDISO);

  if (err)
   goto err_close;
 }


 err = pucan_set_options(priv, PUCAN_OPTION_ERROR);
 if (err)
  goto err_close;


 for (i = 0; i <= PUCAN_FLTSTD_ROW_IDX_MAX; i++)
  pucan_set_std_filter(priv, i, 0xffffffff);

 err = peak_canfd_start(priv);
 if (err)
  goto err_close;


 err = pucan_setup_rx_barrier(priv);
 if (!err)
  goto err_exit;

err_close:
 close_candev(ndev);
err_exit:
 return err;
}
