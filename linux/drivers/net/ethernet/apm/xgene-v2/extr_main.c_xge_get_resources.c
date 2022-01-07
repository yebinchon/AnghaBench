
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_mode; int irq; int base_addr; } ;
struct xge_pdata {TYPE_1__ resources; struct net_device* ndev; struct platform_device* pdev; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int addr_len; int dev_addr; int perm_addr; } ;


 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IORESOURCE_MEM ;
 int PHY_INTERFACE_MODE_RGMII ;
 int dev_err (struct device*,char*) ;
 int device_get_mac_address (struct device*,int ,int ) ;
 int device_get_phy_mode (struct device*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int xge_get_resources(struct xge_pdata *pdata)
{
 struct platform_device *pdev;
 struct net_device *ndev;
 int phy_mode, ret = 0;
 struct resource *res;
 struct device *dev;

 pdev = pdata->pdev;
 dev = &pdev->dev;
 ndev = pdata->ndev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "Resource enet_csr not defined\n");
  return -ENODEV;
 }

 pdata->resources.base_addr = devm_ioremap(dev, res->start,
        resource_size(res));
 if (!pdata->resources.base_addr) {
  dev_err(dev, "Unable to retrieve ENET Port CSR region\n");
  return -ENOMEM;
 }

 if (!device_get_mac_address(dev, ndev->dev_addr, ETH_ALEN))
  eth_hw_addr_random(ndev);

 memcpy(ndev->perm_addr, ndev->dev_addr, ndev->addr_len);

 phy_mode = device_get_phy_mode(dev);
 if (phy_mode < 0) {
  dev_err(dev, "Unable to get phy-connection-type\n");
  return phy_mode;
 }
 pdata->resources.phy_mode = phy_mode;

 if (pdata->resources.phy_mode != PHY_INTERFACE_MODE_RGMII) {
  dev_err(dev, "Incorrect phy-connection-type specified\n");
  return -ENODEV;
 }

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 pdata->resources.irq = ret;

 return 0;
}
