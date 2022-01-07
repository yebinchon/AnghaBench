
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int dummy; } ;


 int gfar_request_irq (struct gfar_private*) ;
 int init_phy (struct net_device*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int startup_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_enet_open(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 int err;

 err = init_phy(dev);
 if (err)
  return err;

 err = gfar_request_irq(priv);
 if (err)
  return err;

 err = startup_gfar(dev);
 if (err)
  return err;

 return err;
}
