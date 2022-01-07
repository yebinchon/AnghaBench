
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pucan_error_msg {int rx_err_cnt; int tx_err_cnt; } ;
struct TYPE_2__ {int rxerr; int txerr; } ;
struct peak_canfd_priv {TYPE_1__ bec; } ;



__attribute__((used)) static int pucan_handle_error(struct peak_canfd_priv *priv,
         struct pucan_error_msg *msg)
{
 priv->bec.txerr = msg->tx_err_cnt;
 priv->bec.rxerr = msg->rx_err_cnt;

 return 0;
}
