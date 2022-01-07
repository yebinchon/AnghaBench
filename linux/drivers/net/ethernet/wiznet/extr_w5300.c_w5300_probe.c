
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int napi; struct net_device* ndev; } ;
struct platform_device {int dev; } ;
struct net_device {int features; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;


 int ENOMEM ;
 int HZ ;
 int NETIF_F_VLAN_CHALLENGED ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int w5300_ethtool_ops ;
 int w5300_hw_probe (struct platform_device*) ;
 int w5300_napi_poll ;
 int w5300_netdev_ops ;

__attribute__((used)) static int w5300_probe(struct platform_device *pdev)
{
 struct w5300_priv *priv;
 struct net_device *ndev;
 int err;

 ndev = alloc_etherdev(sizeof(*priv));
 if (!ndev)
  return -ENOMEM;
 SET_NETDEV_DEV(ndev, &pdev->dev);
 platform_set_drvdata(pdev, ndev);
 priv = netdev_priv(ndev);
 priv->ndev = ndev;

 ndev->netdev_ops = &w5300_netdev_ops;
 ndev->ethtool_ops = &w5300_ethtool_ops;
 ndev->watchdog_timeo = HZ;
 netif_napi_add(ndev, &priv->napi, w5300_napi_poll, 16);




 ndev->features |= NETIF_F_VLAN_CHALLENGED;

 err = register_netdev(ndev);
 if (err < 0)
  goto err_register;

 err = w5300_hw_probe(pdev);
 if (err < 0)
  goto err_hw_probe;

 return 0;

err_hw_probe:
 unregister_netdev(ndev);
err_register:
 free_netdev(ndev);
 return err;
}
