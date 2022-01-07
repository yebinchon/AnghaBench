
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctrlmode; } ;
struct TYPE_3__ {scalar_t__ rxerr; scalar_t__ txerr; } ;
struct peak_canfd_priv {TYPE_2__ can; TYPE_1__ bec; scalar_t__ echo_idx; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int pucan_clr_err_counters (struct peak_canfd_priv*) ;
 int pucan_set_listen_only_mode (struct peak_canfd_priv*) ;
 int pucan_set_normal_mode (struct peak_canfd_priv*) ;

__attribute__((used)) static int peak_canfd_start(struct peak_canfd_priv *priv)
{
 int err;

 err = pucan_clr_err_counters(priv);
 if (err)
  goto err_exit;

 priv->echo_idx = 0;

 priv->bec.txerr = 0;
 priv->bec.rxerr = 0;

 if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  err = pucan_set_listen_only_mode(priv);
 else
  err = pucan_set_normal_mode(priv);

err_exit:
 return err;
}
