
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int irq; int dev; } ;
struct net_device {int * ethtool_ops; int watchdog_timeo; int * netdev_ops; int irq; int if_port; int dev_addr; } ;
struct enc28j60_net {int restart_work; int irq_work; int setrx_work; int tx_work; int lock; int msg_enable; struct spi_device* spi; struct net_device* netdev; } ;
typedef int macaddr ;
struct TYPE_3__ {int msg_enable; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int EIO ;
 int ENC28J60_MSG_DEFAULT ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IF_PORT_10BASET ;
 int INIT_WORK (int *,int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 TYPE_1__ debug ;
 int dev_err (int *,char*,int,...) ;
 int dev_info (int *,char*,...) ;
 scalar_t__ device_get_mac_address (int *,unsigned char*,int) ;
 int enc28j60_chipset_init (struct net_device*) ;
 int enc28j60_ethtool_ops ;
 int enc28j60_irq ;
 int enc28j60_irq_work_handler ;
 int enc28j60_lowpower (struct enc28j60_net*,int) ;
 int enc28j60_netdev_ops ;
 int enc28j60_restart_work_handler ;
 int enc28j60_set_hw_macaddr (struct net_device*) ;
 int enc28j60_setrx_work_handler ;
 int enc28j60_tx_work_handler ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,unsigned char*) ;
 int free_irq (int ,struct enc28j60_net*) ;
 int free_netdev (struct net_device*) ;
 int mutex_init (int *) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_drv (TYPE_1__*) ;
 int netif_msg_init (int ,int ) ;
 scalar_t__ netif_msg_probe (struct enc28j60_net*) ;
 int register_netdev (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct enc28j60_net*) ;
 int spi_set_drvdata (struct spi_device*,struct enc28j60_net*) ;

__attribute__((used)) static int enc28j60_probe(struct spi_device *spi)
{
 unsigned char macaddr[ETH_ALEN];
 struct net_device *dev;
 struct enc28j60_net *priv;
 int ret = 0;

 if (netif_msg_drv(&debug))
  dev_info(&spi->dev, "Ethernet driver %s loaded\n", DRV_VERSION);

 dev = alloc_etherdev(sizeof(struct enc28j60_net));
 if (!dev) {
  ret = -ENOMEM;
  goto error_alloc;
 }
 priv = netdev_priv(dev);

 priv->netdev = dev;
 priv->spi = spi;
 priv->msg_enable = netif_msg_init(debug.msg_enable, ENC28J60_MSG_DEFAULT);
 mutex_init(&priv->lock);
 INIT_WORK(&priv->tx_work, enc28j60_tx_work_handler);
 INIT_WORK(&priv->setrx_work, enc28j60_setrx_work_handler);
 INIT_WORK(&priv->irq_work, enc28j60_irq_work_handler);
 INIT_WORK(&priv->restart_work, enc28j60_restart_work_handler);
 spi_set_drvdata(spi, priv);
 SET_NETDEV_DEV(dev, &spi->dev);

 if (!enc28j60_chipset_init(dev)) {
  if (netif_msg_probe(priv))
   dev_info(&spi->dev, "chip not found\n");
  ret = -EIO;
  goto error_irq;
 }

 if (device_get_mac_address(&spi->dev, macaddr, sizeof(macaddr)))
  ether_addr_copy(dev->dev_addr, macaddr);
 else
  eth_hw_addr_random(dev);
 enc28j60_set_hw_macaddr(dev);




 ret = request_irq(spi->irq, enc28j60_irq, 0, DRV_NAME, priv);
 if (ret < 0) {
  if (netif_msg_probe(priv))
   dev_err(&spi->dev, "request irq %d failed (ret = %d)\n",
    spi->irq, ret);
  goto error_irq;
 }

 dev->if_port = IF_PORT_10BASET;
 dev->irq = spi->irq;
 dev->netdev_ops = &enc28j60_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;
 dev->ethtool_ops = &enc28j60_ethtool_ops;

 enc28j60_lowpower(priv, 1);

 ret = register_netdev(dev);
 if (ret) {
  if (netif_msg_probe(priv))
   dev_err(&spi->dev, "register netdev failed (ret = %d)\n",
    ret);
  goto error_register;
 }

 return 0;

error_register:
 free_irq(spi->irq, priv);
error_irq:
 free_netdev(dev);
error_alloc:
 return ret;
}
