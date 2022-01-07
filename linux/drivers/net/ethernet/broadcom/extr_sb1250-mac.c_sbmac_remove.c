
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_base; int mii_bus; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int sbmac_uninitctx (struct sbmac_softc*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sbmac_remove(struct platform_device *pldev)
{
 struct net_device *dev = platform_get_drvdata(pldev);
 struct sbmac_softc *sc = netdev_priv(dev);

 unregister_netdev(dev);
 sbmac_uninitctx(sc);
 mdiobus_unregister(sc->mii_bus);
 mdiobus_free(sc->mii_bus);
 iounmap(sc->sbm_base);
 free_netdev(dev);

 return 0;
}
