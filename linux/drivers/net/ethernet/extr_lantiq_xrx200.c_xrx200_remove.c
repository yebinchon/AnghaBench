
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int napi; } ;
struct TYPE_3__ {int napi; } ;
struct xrx200_priv {int clk; TYPE_2__ chan_rx; TYPE_1__ chan_tx; struct net_device* net_dev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int netif_napi_del (int *) ;
 int netif_stop_queue (struct net_device*) ;
 struct xrx200_priv* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;
 int xrx200_hw_cleanup (struct xrx200_priv*) ;

__attribute__((used)) static int xrx200_remove(struct platform_device *pdev)
{
 struct xrx200_priv *priv = platform_get_drvdata(pdev);
 struct net_device *net_dev = priv->net_dev;


 netif_stop_queue(net_dev);
 netif_napi_del(&priv->chan_tx.napi);
 netif_napi_del(&priv->chan_rx.napi);


 unregister_netdev(net_dev);


 clk_disable_unprepare(priv->clk);


 xrx200_hw_cleanup(priv);

 return 0;
}
