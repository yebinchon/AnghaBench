
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct platform_device {int id; int dev; } ;
struct plat_cpmac_data {int phy_mask; int dev_addr; } ;
struct phy_device {int dummy; } ;
struct net_device {int dev_addr; int irq; int * ethtool_ops; int * netdev_ops; } ;
struct cpmac_priv {int ring_size; int phy_name; int msg_enable; struct net_device* dev; int rx_lock; int lock; int napi; struct platform_device* pdev; } ;
typedef int mdio_bus_id ;
struct TYPE_3__ {char* id; } ;


 int CPMAC_QUEUES ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_MAX_ADDR ;
 int PTR_ERR (struct phy_device*) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int cpmac_adjust_link ;
 int cpmac_ethtool_ops ;
 TYPE_1__* cpmac_mii ;
 int cpmac_netdev_ops ;
 int cpmac_poll ;
 int debug_level ;
 int dev_err (int *,char*) ;
 struct plat_cpmac_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,void*,int ,int ,int ) ;
 scalar_t__ dumb_switch ;
 scalar_t__ external_switch ;
 int free_netdev (struct net_device*) ;
 int mdiobus_get_phy (TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct cpmac_priv*) ;
 int netif_msg_init (int ,int) ;
 scalar_t__ netif_msg_probe (struct cpmac_priv*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 struct phy_device* phy_connect (struct net_device*,int ,int ,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int snprintf (int ,int,char*,char*,int) ;
 int spin_lock_init (int *) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int cpmac_probe(struct platform_device *pdev)
{
 int rc, phy_id;
 char mdio_bus_id[MII_BUS_ID_SIZE];
 struct resource *mem;
 struct cpmac_priv *priv;
 struct net_device *dev;
 struct plat_cpmac_data *pdata;
 struct phy_device *phydev = ((void*)0);

 pdata = dev_get_platdata(&pdev->dev);

 if (external_switch || dumb_switch) {
  strncpy(mdio_bus_id, "fixed-0", MII_BUS_ID_SIZE);
  phy_id = pdev->id;
 } else {
  for (phy_id = 0; phy_id < PHY_MAX_ADDR; phy_id++) {
   if (!(pdata->phy_mask & (1 << phy_id)))
    continue;
   if (!mdiobus_get_phy(cpmac_mii, phy_id))
    continue;
   strncpy(mdio_bus_id, cpmac_mii->id, MII_BUS_ID_SIZE);
   break;
  }
 }

 if (phy_id == PHY_MAX_ADDR) {
  dev_err(&pdev->dev, "no PHY present, falling back "
   "to switch on MDIO bus 0\n");
  strncpy(mdio_bus_id, "fixed-0", MII_BUS_ID_SIZE);
  phy_id = pdev->id;
 }
 mdio_bus_id[sizeof(mdio_bus_id) - 1] = '\0';

 dev = alloc_etherdev_mq(sizeof(*priv), CPMAC_QUEUES);
 if (!dev)
  return -ENOMEM;

 SET_NETDEV_DEV(dev, &pdev->dev);
 platform_set_drvdata(pdev, dev);
 priv = netdev_priv(dev);

 priv->pdev = pdev;
 mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
 if (!mem) {
  rc = -ENODEV;
  goto fail;
 }

 dev->irq = platform_get_irq_byname(pdev, "irq");

 dev->netdev_ops = &cpmac_netdev_ops;
 dev->ethtool_ops = &cpmac_ethtool_ops;

 netif_napi_add(dev, &priv->napi, cpmac_poll, 64);

 spin_lock_init(&priv->lock);
 spin_lock_init(&priv->rx_lock);
 priv->dev = dev;
 priv->ring_size = 64;
 priv->msg_enable = netif_msg_init(debug_level, 0xff);
 memcpy(dev->dev_addr, pdata->dev_addr, sizeof(pdata->dev_addr));

 snprintf(priv->phy_name, MII_BUS_ID_SIZE, PHY_ID_FMT,
      mdio_bus_id, phy_id);

 phydev = phy_connect(dev, priv->phy_name, cpmac_adjust_link,
        PHY_INTERFACE_MODE_MII);

 if (IS_ERR(phydev)) {
  if (netif_msg_drv(priv))
   dev_err(&pdev->dev, "Could not attach to PHY\n");

  rc = PTR_ERR(phydev);
  goto fail;
 }

 rc = register_netdev(dev);
 if (rc) {
  dev_err(&pdev->dev, "Could not register net device\n");
  goto fail;
 }

 if (netif_msg_probe(priv)) {
  dev_info(&pdev->dev, "regs: %p, irq: %d, phy: %s, "
    "mac: %pM\n", (void *)mem->start, dev->irq,
    priv->phy_name, dev->dev_addr);
 }

 return 0;

fail:
 free_netdev(dev);
 return rc;
}
