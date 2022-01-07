
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct phy_device {int dummy; } ;
struct net_device {unsigned int irq; unsigned long base_addr; struct phy_device* phydev; int dev_addr; int * ethtool_ops; int * netdev_ops; int features; } ;
struct dnet {int capabilities; scalar_t__ regs; int napi; int lock; struct net_device* dev; } ;


 int DNET_CAPS_MASK ;
 int DNET_HAS_DMA ;
 int DNET_HAS_GIGABIT ;
 int DNET_HAS_IRQ ;
 int DNET_HAS_MDIO ;
 int DRV_NAME ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int VERCAPS ;
 int __dnet_set_hwaddr (struct dnet*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char*,...) ;
 int dev_warn (int *,char*) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 int dnet_ethtool_ops ;
 int dnet_get_hwaddr (struct dnet*) ;
 int dnet_interrupt ;
 int dnet_mii_init (struct dnet*) ;
 int dnet_netdev_ops ;
 int dnet_phy_marvell_fixup ;
 int dnet_poll ;
 int dnet_readl (struct dnet*,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_irq (unsigned int,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 struct dnet* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int phy_attached_info (struct phy_device*) ;
 int phy_register_fixup_for_uid (int,int,int ) ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int request_irq (unsigned int,int ,int ,int ,struct net_device*) ;
 int spin_lock_init (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int dnet_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct net_device *dev;
 struct dnet *bp;
 struct phy_device *phydev;
 int err;
 unsigned int irq;

 irq = platform_get_irq(pdev, 0);

 dev = alloc_etherdev(sizeof(*bp));
 if (!dev)
  return -ENOMEM;


 dev->features |= 0;

 bp = netdev_priv(dev);
 bp->dev = dev;

 platform_set_drvdata(pdev, dev);
 SET_NETDEV_DEV(dev, &pdev->dev);

 spin_lock_init(&bp->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 bp->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(bp->regs)) {
  err = PTR_ERR(bp->regs);
  goto err_out_free_dev;
 }

 dev->irq = irq;
 err = request_irq(dev->irq, dnet_interrupt, 0, DRV_NAME, dev);
 if (err) {
  dev_err(&pdev->dev, "Unable to request IRQ %d (error %d)\n",
         irq, err);
  goto err_out_free_dev;
 }

 dev->netdev_ops = &dnet_netdev_ops;
 netif_napi_add(dev, &bp->napi, dnet_poll, 64);
 dev->ethtool_ops = &dnet_ethtool_ops;

 dev->base_addr = (unsigned long)bp->regs;

 bp->capabilities = dnet_readl(bp, VERCAPS) & DNET_CAPS_MASK;

 dnet_get_hwaddr(bp);

 if (!is_valid_ether_addr(dev->dev_addr)) {

  eth_hw_addr_random(dev);
  __dnet_set_hwaddr(bp);
 }

 err = register_netdev(dev);
 if (err) {
  dev_err(&pdev->dev, "Cannot register net device, aborting.\n");
  goto err_out_free_irq;
 }


 err = phy_register_fixup_for_uid(0x01410cc0, 0xfffffff0,
      dnet_phy_marvell_fixup);

 if (err)
  dev_warn(&pdev->dev, "Cannot register PHY board fixup.\n");

 err = dnet_mii_init(bp);
 if (err)
  goto err_out_unregister_netdev;

 dev_info(&pdev->dev, "Dave DNET at 0x%p (0x%08x) irq %d %pM\n",
        bp->regs, (unsigned int)res->start, dev->irq, dev->dev_addr);
 dev_info(&pdev->dev, "has %smdio, %sirq, %sgigabit, %sdma\n",
        (bp->capabilities & DNET_HAS_MDIO) ? "" : "no ",
        (bp->capabilities & DNET_HAS_IRQ) ? "" : "no ",
        (bp->capabilities & DNET_HAS_GIGABIT) ? "" : "no ",
        (bp->capabilities & DNET_HAS_DMA) ? "" : "no ");
 phydev = dev->phydev;
 phy_attached_info(phydev);

 return 0;

err_out_unregister_netdev:
 unregister_netdev(dev);
err_out_free_irq:
 free_irq(dev->irq, dev);
err_out_free_dev:
 free_netdev(dev);
 return err;
}
