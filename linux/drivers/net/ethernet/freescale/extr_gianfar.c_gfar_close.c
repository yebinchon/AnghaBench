
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct gfar_private {int reset_task; } ;


 int cancel_work_sync (int *) ;
 int gfar_free_irq (struct gfar_private*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;
 int stop_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_close(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);

 cancel_work_sync(&priv->reset_task);
 stop_gfar(dev);


 phy_disconnect(dev->phydev);

 gfar_free_irq(priv);

 return 0;
}
