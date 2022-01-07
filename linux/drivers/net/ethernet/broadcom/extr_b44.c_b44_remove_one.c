
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int bus; } ;
struct net_device {int dummy; } ;
struct b44 {int flags; int napi; } ;


 int B44_FLAG_EXTERNAL_PHY ;
 int PCI_D3hot ;
 int b44_unregister_phy_one (struct b44*) ;
 int free_netdev (struct net_device*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int ssb_bus_may_powerdown (int ) ;
 int ssb_device_disable (struct ssb_device*,int ) ;
 struct net_device* ssb_get_drvdata (struct ssb_device*) ;
 int ssb_pcihost_set_power_state (struct ssb_device*,int ) ;
 int ssb_set_drvdata (struct ssb_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void b44_remove_one(struct ssb_device *sdev)
{
 struct net_device *dev = ssb_get_drvdata(sdev);
 struct b44 *bp = netdev_priv(dev);

 unregister_netdev(dev);
 if (bp->flags & B44_FLAG_EXTERNAL_PHY)
  b44_unregister_phy_one(bp);
 ssb_device_disable(sdev, 0);
 ssb_bus_may_powerdown(sdev->bus);
 netif_napi_del(&bp->napi);
 free_netdev(dev);
 ssb_pcihost_set_power_state(sdev, PCI_D3hot);
 ssb_set_drvdata(sdev, ((void*)0));
}
