
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_resources {int addr; int irq; } ;
struct xlgmac_pdata {int msg_enable; int rss_mutex; int mac_regs; int dev_irq; struct net_device* netdev; struct device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int XLGMAC_MAX_DMA_CHANNELS ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int debug ;
 int default_msg_level ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int mutex_init (int *) ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int register_netdev (struct net_device*) ;
 int xlgmac_init (struct xlgmac_pdata*) ;

int xlgmac_drv_probe(struct device *dev, struct xlgmac_resources *res)
{
 struct xlgmac_pdata *pdata;
 struct net_device *netdev;
 int ret;

 netdev = alloc_etherdev_mq(sizeof(struct xlgmac_pdata),
       XLGMAC_MAX_DMA_CHANNELS);

 if (!netdev) {
  dev_err(dev, "alloc_etherdev failed\n");
  return -ENOMEM;
 }

 SET_NETDEV_DEV(netdev, dev);
 dev_set_drvdata(dev, netdev);
 pdata = netdev_priv(netdev);
 pdata->dev = dev;
 pdata->netdev = netdev;

 pdata->dev_irq = res->irq;
 pdata->mac_regs = res->addr;

 mutex_init(&pdata->rss_mutex);
 pdata->msg_enable = netif_msg_init(debug, default_msg_level);

 ret = xlgmac_init(pdata);
 if (ret) {
  dev_err(dev, "xlgmac init failed\n");
  goto err_free_netdev;
 }

 ret = register_netdev(netdev);
 if (ret) {
  dev_err(dev, "net device registration failed\n");
  goto err_free_netdev;
 }

 return 0;

err_free_netdev:
 free_netdev(netdev);

 return ret;
}
