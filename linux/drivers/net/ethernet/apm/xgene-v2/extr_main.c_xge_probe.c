
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int napi; struct net_device* ndev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int features; int hw_features; int * netdev_ops; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_GRO ;
 int NETIF_F_GSO ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int free_netdev (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xge_pdata*) ;
 int register_netdev (struct net_device*) ;
 int xge_get_resources (struct xge_pdata*) ;
 int xge_init_hw (struct net_device*) ;
 int xge_mdio_config (struct net_device*) ;
 int xge_napi ;
 int xge_set_ethtool_ops (struct net_device*) ;
 int xgene_ndev_ops ;

__attribute__((used)) static int xge_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct net_device *ndev;
 struct xge_pdata *pdata;
 int ret;

 ndev = alloc_etherdev(sizeof(*pdata));
 if (!ndev)
  return -ENOMEM;

 pdata = netdev_priv(ndev);

 pdata->pdev = pdev;
 pdata->ndev = ndev;
 SET_NETDEV_DEV(ndev, dev);
 platform_set_drvdata(pdev, pdata);
 ndev->netdev_ops = &xgene_ndev_ops;

 ndev->features |= NETIF_F_GSO |
     NETIF_F_GRO;

 ret = xge_get_resources(pdata);
 if (ret)
  goto err;

 ndev->hw_features = ndev->features;
 xge_set_ethtool_ops(ndev);

 ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
 if (ret) {
  netdev_err(ndev, "No usable DMA configuration\n");
  goto err;
 }

 ret = xge_init_hw(ndev);
 if (ret)
  goto err;

 ret = xge_mdio_config(ndev);
 if (ret)
  goto err;

 netif_napi_add(ndev, &pdata->napi, xge_napi, NAPI_POLL_WEIGHT);

 ret = register_netdev(ndev);
 if (ret) {
  netdev_err(ndev, "Failed to register netdev\n");
  goto err;
 }

 return 0;

err:
 free_netdev(ndev);

 return ret;
}
