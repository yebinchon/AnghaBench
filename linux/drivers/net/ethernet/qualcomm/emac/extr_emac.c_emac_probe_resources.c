
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct net_device {unsigned long base_addr; int dev_addr; } ;
struct TYPE_2__ {int irq; } ;
struct emac_adapter {void* base; void* csr; TYPE_1__ irq; struct net_device* netdev; } ;


 int ETH_ALEN ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 scalar_t__ device_get_mac_address (int *,char*,int) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int emac_probe_resources(struct platform_device *pdev,
    struct emac_adapter *adpt)
{
 struct net_device *netdev = adpt->netdev;
 char maddr[ETH_ALEN];
 int ret = 0;


 if (device_get_mac_address(&pdev->dev, maddr, ETH_ALEN))
  ether_addr_copy(netdev->dev_addr, maddr);
 else
  eth_hw_addr_random(netdev);


 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 adpt->irq.irq = ret;


 adpt->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(adpt->base))
  return PTR_ERR(adpt->base);


 adpt->csr = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(adpt->csr))
  return PTR_ERR(adpt->csr);

 netdev->base_addr = (unsigned long)adpt->base;

 return 0;
}
