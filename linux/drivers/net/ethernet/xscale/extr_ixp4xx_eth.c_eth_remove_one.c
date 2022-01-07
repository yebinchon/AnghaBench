
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int mem_res; int npe; int id; } ;
struct platform_device {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 size_t NPE_ID (int ) ;
 int free_netdev (struct net_device*) ;
 struct port* netdev_priv (struct net_device*) ;
 int ** npe_port_tab ;
 int npe_release (int ) ;
 int phy_disconnect (struct phy_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int eth_remove_one(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct phy_device *phydev = dev->phydev;
 struct port *port = netdev_priv(dev);

 unregister_netdev(dev);
 phy_disconnect(phydev);
 npe_port_tab[NPE_ID(port->id)] = ((void*)0);
 npe_release(port->npe);
 release_resource(port->mem_res);
 free_netdev(dev);
 return 0;
}
