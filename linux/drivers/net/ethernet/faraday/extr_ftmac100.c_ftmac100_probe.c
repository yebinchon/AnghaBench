
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct net_device {int dev_addr; int * netdev_ops; int * ethtool_ops; } ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; scalar_t__ phy_id; } ;
struct ftmac100 {int irq; int napi; int res; int base; TYPE_1__ mii; int tx_lock; int * dev; struct net_device* netdev; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int ftmac100_ethtool_ops ;
 int ftmac100_mdio_read ;
 int ftmac100_mdio_write ;
 int ftmac100_netdev_ops ;
 int ftmac100_poll ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int is_valid_ether_addr (int ) ;
 int netdev_info (struct net_device*,char*,int,...) ;
 struct ftmac100* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_napi_del (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int release_resource (int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ftmac100_probe(struct platform_device *pdev)
{
 struct resource *res;
 int irq;
 struct net_device *netdev;
 struct ftmac100 *priv;
 int err;

 if (!pdev)
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 netdev = alloc_etherdev(sizeof(*priv));
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);
 netdev->ethtool_ops = &ftmac100_ethtool_ops;
 netdev->netdev_ops = &ftmac100_netdev_ops;

 platform_set_drvdata(pdev, netdev);


 priv = netdev_priv(netdev);
 priv->netdev = netdev;
 priv->dev = &pdev->dev;

 spin_lock_init(&priv->tx_lock);


 netif_napi_add(netdev, &priv->napi, ftmac100_poll, 64);


 priv->res = request_mem_region(res->start, resource_size(res),
           dev_name(&pdev->dev));
 if (!priv->res) {
  dev_err(&pdev->dev, "Could not reserve memory region\n");
  err = -ENOMEM;
  goto err_req_mem;
 }

 priv->base = ioremap(res->start, resource_size(res));
 if (!priv->base) {
  dev_err(&pdev->dev, "Failed to ioremap ethernet registers\n");
  err = -EIO;
  goto err_ioremap;
 }

 priv->irq = irq;


 priv->mii.phy_id = 0;
 priv->mii.phy_id_mask = 0x1f;
 priv->mii.reg_num_mask = 0x1f;
 priv->mii.dev = netdev;
 priv->mii.mdio_read = ftmac100_mdio_read;
 priv->mii.mdio_write = ftmac100_mdio_write;


 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to register netdev\n");
  goto err_register_netdev;
 }

 netdev_info(netdev, "irq %d, mapped at %p\n", priv->irq, priv->base);

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  eth_hw_addr_random(netdev);
  netdev_info(netdev, "generated random MAC address %pM\n",
       netdev->dev_addr);
 }

 return 0;

err_register_netdev:
 iounmap(priv->base);
err_ioremap:
 release_resource(priv->res);
err_req_mem:
 netif_napi_del(&priv->napi);
 free_netdev(netdev);
err_alloc_etherdev:
 return err;
}
