
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int flags; } ;
struct emac_adapter {int dummy; } ;


 int IFF_UP ;
 struct net_device* dev_get_drvdata (int *) ;
 int emac_mac_reset (struct emac_adapter*) ;
 int emac_sgmii_close (struct emac_adapter*) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void emac_shutdown(struct platform_device *pdev)
{
 struct net_device *netdev = dev_get_drvdata(&pdev->dev);
 struct emac_adapter *adpt = netdev_priv(netdev);

 if (netdev->flags & IFF_UP) {

  emac_sgmii_close(adpt);


  emac_mac_reset(adpt);
 }
}
