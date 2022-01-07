
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bdx_priv {int nic; int napi; int rxf_fifo0; int ndev; } ;


 int ENTER ;
 int RET (int) ;
 int bdx_close (struct net_device*) ;
 int bdx_fw_load (struct bdx_priv*) ;
 int bdx_hw_start (struct bdx_priv*) ;
 int bdx_reset (struct bdx_priv*) ;
 int bdx_rx_alloc_skbs (struct bdx_priv*,int *) ;
 int bdx_rx_init (struct bdx_priv*) ;
 int bdx_tx_init (struct bdx_priv*) ;
 int napi_enable (int *) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (int ) ;
 int print_fw_id (int ) ;

__attribute__((used)) static int bdx_open(struct net_device *ndev)
{
 struct bdx_priv *priv;
 int rc;

 ENTER;
 priv = netdev_priv(ndev);
 bdx_reset(priv);
 if (netif_running(ndev))
  netif_stop_queue(priv->ndev);

 if ((rc = bdx_tx_init(priv)) ||
     (rc = bdx_rx_init(priv)) ||
     (rc = bdx_fw_load(priv)))
  goto err;

 bdx_rx_alloc_skbs(priv, &priv->rxf_fifo0);

 rc = bdx_hw_start(priv);
 if (rc)
  goto err;

 napi_enable(&priv->napi);

 print_fw_id(priv->nic);

 RET(0);

err:
 bdx_close(ndev);
 RET(rc);
}
