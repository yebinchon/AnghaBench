
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct hix5hd2_priv {int tx_timeout_task; int phy_node; int hw_cap; int bus; int napi; } ;


 scalar_t__ HAS_CAP_TSO (int ) ;
 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int hix5hd2_destroy_hw_desc_queue (struct hix5hd2_priv*) ;
 int hix5hd2_destroy_sg_desc_queue (struct hix5hd2_priv*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int of_node_put (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int hix5hd2_dev_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct hix5hd2_priv *priv = netdev_priv(ndev);

 netif_napi_del(&priv->napi);
 unregister_netdev(ndev);
 mdiobus_unregister(priv->bus);
 mdiobus_free(priv->bus);

 if (HAS_CAP_TSO(priv->hw_cap))
  hix5hd2_destroy_sg_desc_queue(priv);
 hix5hd2_destroy_hw_desc_queue(priv);
 of_node_put(priv->phy_node);
 cancel_work_sync(&priv->tx_timeout_task);
 free_netdev(ndev);

 return 0;
}
