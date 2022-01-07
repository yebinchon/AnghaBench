
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bdx_priv {int napi; } ;


 int ENTER ;
 int RET (int ) ;
 int bdx_hw_stop (struct bdx_priv*) ;
 int bdx_reset (struct bdx_priv*) ;
 int bdx_rx_free (struct bdx_priv*) ;
 int bdx_tx_free (struct bdx_priv*) ;
 int napi_disable (int *) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bdx_close(struct net_device *ndev)
{
 struct bdx_priv *priv = ((void*)0);

 ENTER;
 priv = netdev_priv(ndev);

 napi_disable(&priv->napi);

 bdx_reset(priv);
 bdx_hw_stop(priv);
 bdx_rx_free(priv);
 bdx_tx_free(priv);
 RET(0);
}
